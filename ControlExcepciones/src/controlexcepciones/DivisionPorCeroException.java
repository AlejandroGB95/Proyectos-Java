/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlexcepciones;

/**
 *
 * @author Usuario
 */
public class DivisionPorCeroException extends Exception{
    private int dividendo;

    public DivisionPorCeroException(int dividendo) {
        this.dividendo = dividendo;
    }

    @Override
    public String toString() {
            return "La division entre "+  dividendo +
                    " y 0, no se puede realizar";
    }
     
}
