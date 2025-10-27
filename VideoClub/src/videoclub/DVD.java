/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package videoclub;

/**
 *
 * @author Usuario
 */
public class DVD {
    private String  codigo;
    private int     numCopia;

    public DVD(String codigo, int numCopia) {
        this.codigo = codigo;
        this.numCopia = numCopia;
    }
    
    

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public int getNumCopia() {
        return numCopia;
    }

    public void setNumCopia(int numCopia) {
        this.numCopia = numCopia;
    }

    @Override
    public String toString() {
        return codigo + ":" + numCopia;
    }
    
    
    
}
