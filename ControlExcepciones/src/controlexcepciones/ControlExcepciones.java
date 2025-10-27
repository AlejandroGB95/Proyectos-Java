/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlexcepciones;

import javax.swing.JOptionPane;

/**
 *
 * @author Usuario
 */
public class ControlExcepciones {

    /**
     * Los errores o lo captura el método o el main
     */
    public static void main(String[] args) {
        int x;
        boolean noValido=true;
        do{
            try {
            x = Integer.parseInt(
                    JOptionPane.showInputDialog("Escriba un número"));
            System.out.println("Has escrito el número ->" +x);
            noValido=false; 
            
            //indiceAleatorio();
        
                dividir(23, 0);
            
            } catch (NumberFormatException e) {

                JOptionPane.showMessageDialog(null, "El número no es válido");
            } catch (ArrayIndexOutOfBoundsException exc) {
                System.out.println("Fallo en el índice: "+ exc.getMessage());
            
            
            
            } catch (DivisionPorCeroException exc) {
                System.out.println(exc);
                //x=23/0;
                try{
                    throw (new ArithmeticException("Has dividido por cero")); //Por este solo se saldría habría que meterlo en un try catch
                } catch (ArithmeticException e){
                    System.out.println(e);
                }
            
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null, "Error indeterminado-> " + e.getMessage());
            
            }
        }while(noValido);
     
        
    }
    
    private static double dividir(int a, int b) throws
            DivisionPorCeroException {

        if (b == 0) {
            throw new DivisionPorCeroException(a);
        } else {
            return a / b;
        }

    }
    
    static void indiceAleatorio() throws ArrayIndexOutOfBoundsException{
        boolean indiceNoValido = true;
        int i=-1; //Entero que tomará nos aleatorios de 0 a 9
        String texto[] = {"Uno", "Dos", "Tres", "Cuatro", "Cinco"};
        while (indiceNoValido) {
            //try {
                i = (int) (Math.round(Math.random() * 20));
                System.out.println(texto[i]);
                indiceNoValido = false;
            /*} catch (ArrayIndexOutOfBoundsException exc) {
                System.out.println("Fallo en el índice: "+ i);
            }*/
        }
        
    }


}
