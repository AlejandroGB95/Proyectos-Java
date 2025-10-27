

package lecturaescritura;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Usuario
 */
public class LecturaEscritura {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       //lecturaDeLinea ();
        //System.out.println(lecturaDeLinea2 ("Dime tu nombre: "));
        //System.out.println("Tu edad es -> "+leeN("Edad ? "));
        
        ficheroTexto("src/datos/prueba.txt");
    }
    //-------------------------------------------------------
    public static void lecturaDeLinea ()
         {
            int c;
            int contador = 0;
             System.out.println("Escribe una frase y pulsa enter...");
        try {
            // se lee hasta encontrar el fin de línea
            while ((c = System.in.read()) != '\n') {
                contador++;
                System.out.println(c+" -> "+(char) c);
            }
        } catch (IOException ex) {
            System.err.println("Error leyendo del teclado -> "+ ex.getMessage());
        }
            System.out.println(); // Se escribe el cambio de línea
            System.err.println("Contados " + contador + " bytes en total.");
        }
   //------------------------------------------------------
    public static String lecturaDeLinea2 (String mensaje)
         {
            int c;
            int contador = 0;
            String salida="";
            InputStreamReader isr = new InputStreamReader(System.in);
            BufferedReader    br  = new BufferedReader(isr);
            
             System.out.println(mensaje);
        try {
             salida= br.readLine();
             
        } catch (IOException ex) {
            System.err.println("Error leyendo del teclado -> "+ ex.getMessage());
        }
            System.out.println(); // Se escribe el cambio de línea
           // System.err.println("palabra introducida = "+ salida);
           return salida;
        }
  //----------------------------
    public static int leeN(String mensaje){
       
        int numero=-1;
        boolean noSeaEntero=true;
        BufferedReader    br  = new BufferedReader(new InputStreamReader(System.in));
        do{
            System.out.println(mensaje);
            try {
                 numero= Integer.parseInt(br.readLine());
                 noSeaEntero=false;
                 
            } catch (IOException ex) {
                System.out.println("Error leyendo un entero");
            }catch (NumberFormatException ex){
                System.out.println("No es un numero entero, prueba otra vez...");
            }
            
        }while(noSeaEntero);
        return numero;
    }
  //-------------------------------------------------------------------------------------
    public static void ficheroTexto(String fichero) {
       
            try { // escritura de datos
                PrintWriter salida = new PrintWriter(new BufferedWriter(
                                                     new FileWriter(fichero,true)));
                salida.println("en un lugar de la mancha de cuyo");
                salida.println("nombre no quiero acordarme");
                salida.close();
                // lectura de datos
                BufferedReader entrada = new BufferedReader(new FileReader(fichero));
                String s, s2 = new String();
                while ((s = entrada.readLine()) != null) {
                    s2 = s2 + s + "\n";
                }
                System.out.println("Texto leido:" + "\n" + s2);
                entrada.close();
            } catch(java.io.FileNotFoundException e){
                System.out.println("Error no se encuentra el fichero -> "+e.getMessage());
            } catch (java.io.IOException e) {
                    System.out.println("Error Leyendo/Escribiendo en Fichero -> "+e.getMessage());
                }
    
    }
}//class    
