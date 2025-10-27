package apymerronda;

import Persona.Persona;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author 
 */
public class Cliente extends Persona {
    
    private String telefono;

   
    
//------------------------------------------------------------------------------
    
    public Cliente(String telefono, String nombre) {
        super(nombre);
        this.telefono = telefono;
    }   
    public Cliente(String nombre, String nif, String telefono){
        super(nombre, nif);
        this.telefono = telefono;
    }
    public Cliente(String nombre, String apellido1, String apellido2, String nif, String telefono){
        super(nombre, apellido1, apellido2, nif);
        this.telefono = telefono;
    }   
    
//------------------------------------------------------------------------------   
    
    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    @Override
    public String toString() {
        return super.toString()+
                "\n{Teléfono: " + telefono + '}';
    } 
    
}
