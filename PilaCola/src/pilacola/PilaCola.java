/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pilacola;

import java.util.LinkedList;

public class PilaCola {
   
    static LinkedList<Persona> pila;
    static LinkedList<Persona> cola;
    
    public static void main(String[] args) {
        String menu="\n----- MENÚ -----\n1. Añadir\n2. Borrar\n3. Listar\n4. Salir\n----------------\nElige opción... ";
        String submenu="----- SUBMENÚ -----\n1. Pila\n2. Cola\n3. Salir\n--------------------\nElige opción... ";
        
        pila = new LinkedList();
        cola = new LinkedList();
        
        pila.add(new Persona("Juan", "García Torres", 'M', "1111A"));
        pila.add(new Persona("María", "Lopez García", 'F', "2222B"));
        cola.add(new Persona("Paula", "Fernández Torres", 'F', "3333C"));
        cola.add(new Persona("Samuel", "Jimenez García", 'M', "4444D"));
        
        int opc=0;
        int subopc=0;
        do{
        opc = ES.leeN(menu,1,4);
        
            switch (opc) {
                //Añadir
                case 1:
                    subopc = ES.leeN(submenu,1,3);
                    switch (subopc){
                        case 1:
                            añadirAPila(new Persona(ES.leeDeTeclado("Nombre de la persona..."),
                                                    ES.leeDeTeclado("Introduce los apellidos separados por un espacio..."),
                                                    ES.leecaracter("Introduce el sexo... "),
                                                    ES.leeDeTeclado("Introduce el nif... ")));
                            break;
                        case 2:
                            añadirACola(new Persona(ES.leeDeTeclado("Nombre de la persona..."),
                                                    ES.leeDeTeclado("Introduce los apellidos separados por un espacio..."),
                                                    ES.leecaracter("Introduce el sexo... "),
                                                    ES.leeDeTeclado("Introduce el nif... ")));
                            break;
                    }
                    break;
                //Borrar
                case 2:
                    subopc = ES.leeN(submenu,1,3);
                    switch (subopc){
                        case 1: 
                            borrarDePila();
                            break;
                        case 2:
                            borrarDeCola();
                            break;
                    }
                    break;
                case 3:
                //Listar
                    subopc = ES.leeN(submenu,1,3);
                    switch (subopc){
                        case 1: 
                            listar(pila);
                            break;
                        case 2:
                            listar(cola);
                            break;
                    }
                    break;
                //Salir
                case 4:
                    System.out.println("Hasta la próxima...");
                    break;
        }
        }while (opc!=4);
        
    }
    
    static void listar(LinkedList lista){
        System.out.println(lista);
    }
    static void añadirAPila(Persona persona){
        pila.addLast(persona);
    }
    static void añadirACola(Persona persona){
        cola.addLast(persona);
    }
    static void borrarDePila(){
        pila.removeLast();
    }
    static void borrarDeCola(){
        cola.removeFirst();
    }
}