package apymerronda;

import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author 
 */
public class Directivo extends Empleado {
    
    private String categoria;
    private ArrayList<Empleado> subordinados;
    
    
    
//------------------------------------------------------------------------------   

    public Directivo(String categoria,double sueldo_bruto, String nombre) {
        super(sueldo_bruto, nombre);
        this.categoria = categoria;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public ArrayList<Empleado> getSubordinados() {
        return subordinados;
    }

    public void setSubordinados(ArrayList<Empleado> subordinados) {
        this.subordinados = subordinados;
    }

    
    @Override
    public String toString() {
        return 
                super.toString()+
                "\n{Categoria: " + categoria + '}';
    }

}
