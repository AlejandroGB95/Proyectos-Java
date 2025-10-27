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
public class Empleado extends Persona {
    
    private double sueldo_bruto;

    
//------------------------------------------------------------------------------  
    
    public Empleado(double sueldo_bruto, String nombre) {
        super(nombre);
        this.sueldo_bruto = sueldo_bruto;
    }

    public Empleado(double sueldo_bruto, String nombre, String nif) {
        super(nombre, nif);
        this.sueldo_bruto = sueldo_bruto;
    }

    public Empleado(double sueldo_bruto, String nombre, String apellido1, String apellido2, String nif) {
        super(nombre, apellido1, apellido2, nif);
        this.sueldo_bruto = sueldo_bruto;
    }
    
//------------------------------------------------------------------------------
    
    public double getSueldo_bruto() {
        return sueldo_bruto;
    }

    public void setSueldo_bruto(double sueldo_bruto) {
        this.sueldo_bruto = sueldo_bruto;
    }

    public double calcular_salario_neto(double sueldo_bruto, double retencion){
        double salario_neto;
        
              salario_neto = sueldo_bruto - (sueldo_bruto*(retencion/100));
    
        return salario_neto;
    
   }
    
    @Override
    public String toString() {
        return 
                super.toString()+
                "\n{Sueldo Bruto=" + sueldo_bruto + '}';
    }

    
}
