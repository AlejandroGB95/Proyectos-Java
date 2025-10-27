/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fibonaccirecursivo;

import java.util.ArrayList;

/**
 *
 * @author Aitor García
 */
public class FibonacciRecursivo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String[] menuP ={"Menú Fibonacci","Calcula un término concreto","Imprime desde dos números","Calcula desde un arraylist hasta un máximo"};
        int opc=0;
        do{
          opc=pintaMenu(menuP);  
          switch (opc){
              case 1:
                  int n = ES.leeN("Introduce el término a calcular: ");
                    System.out.println("El resultado es: "+ concreto(n));;
                  break;
                  
                  
              case 2:
                  serieminmax();
                  break;
                  
                  
              case 3:
                    seriearray();
                  break;
                  
              case 4:
                  System.out.println("Hasta la próxima...");
                  break;
          }
        } while(opc!=4);
        
    }
    
    static int concreto(int n){
        if (n==0)
            return 0;
        if (n==1)
            return 1;
        
        return concreto(n-2)+concreto(n-1);
        
    }
    
    
    static void serieminmax(){
                  int min=ES.leeN("Indica el mínimo: ");
                  int max=ES.leeN("Indica el máximo: ");
                   for (int i = min; i < max+1; i++) {
                       System.out.println("El número "+i+" es: "+concreto(i));
                  }
    }
    static void seriearray(){
        ArrayList<Integer> serieNum = new ArrayList();;
            int max=ES.leeN("Indica el máximo: ",1);
            serieNum.add(0);
        for (int i = 1; i < max; i++) {
            serieNum.add(concreto(i));
        }
        System.out.println("La array list es: \n\t"+serieNum);
        
    }
    
    //-------------------------------------------------------
    static int pintaMenu(String[] opciones){
        int op;
    System.out.println("-----"+opciones[0]+"----\n" );
        
    for(int i=1; i<opciones.length;i++){
        System.out.println(i+".-\t "+opciones[i] );
    }    
    System.out.println(opciones.length+".-\tSalir");
    
    op=ES.leeN("Elige opcion: ");	
    while(op<0 || op>opciones.length){
        op=ES.leeN("Opción errónea, prueba otra vez: "); 
    } 
        return op;    
    }    
}
