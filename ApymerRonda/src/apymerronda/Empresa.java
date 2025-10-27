package apymerronda;

import ES.ES;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import java.util.TreeSet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author 
 */
import static ES.ES.*;

public class Empresa {

    /**
     * @param args the command line arguments
     */
    
    private String nombre;
    private TreeSet <Empleado>   listaEmpleados;
    private HashMap <String,Cliente> listaClientes;

//------------------------------------------------------------------------------    
    
    public Empresa(String nombre) {
        this.nombre = nombre;
        listaEmpleados = new TreeSet();
        listaClientes = new HashMap();
    }

    public Empresa(String nombre, TreeSet<Empleado> listaEmpleados) {
        this(nombre);
        this.listaEmpleados = listaEmpleados;
    }

    public Empresa(String nombre, TreeSet<Empleado> listaEmpleados, HashMap<String,Cliente> listaClientes) {
        this(nombre, listaEmpleados);
        this.listaClientes = listaClientes;
    }

//------------------------------------------------------------------------------    
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public TreeSet<Empleado> getListaEmpleados() {
        return listaEmpleados;
    }

    public void setListaEmpleados(TreeSet<Empleado> listaEmpleados) {
        this.listaEmpleados = listaEmpleados;
    }

    public HashMap<String,Cliente> getListaClientes() {
        return listaClientes;
    }

    public void setListaClientes(HashMap<String,Cliente> listaClientes) {
        this.listaClientes = listaClientes;
    }
    
    public boolean anadirEmpleado(Empleado emp){
        
        return listaEmpleados.add(emp);
        
    }
    
    public Cliente anadirCliente(Cliente cli){
        char reemplaza=' ';
        if(listaClientes.containsKey(cli.getTelefono())){
            reemplaza=ES.leecaracter("El cliente ya Existe, Quiere reemplazarlo(S/N)?");
            if(Character.toUpperCase(reemplaza) =='S')
                return listaClientes.put(cli.getTelefono(), cli);
        }
        else
            return listaClientes.put(cli.getTelefono(), cli);
        
        return null;
    }

//------------------------------------------------------------------------------       

    @Override
    public String toString() {
        return "\t\nEmpresa" + "\nnombre: " + nombre + "\nEmpleados: " + listaEmpleados + "\nClientes: " + listaClientes;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 67 * hash + Objects.hashCode(this.nombre);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Empresa other = (Empresa) obj;
        if (!Objects.equals(this.nombre, other.nombre)) {
            return false;
        }
        return true;
    }
    
    

}
