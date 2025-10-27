/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package videoclub;

import ES.ES;
import Persona.Persona;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Jose
 */
public class Cliente extends Persona{
    
    protected HashMap <String, DVD> peliculas;

    public Cliente(String nombre, String nif) {
        super(nombre, nif);
        peliculas = new HashMap();
    }

    
    public void alquila(DVD copia) {
        peliculas.put(copia.getCodigo(),copia);
    }
    
    public DVD devuelve(DVD pelicula) {
        return peliculas.remove(pelicula.getCodigo());
    }
    
    @Override
    public boolean equals(Object obj) {
        if (this.nombre.equalsIgnoreCase(nombre)) {
            return true;
        }

        return false;
    }

    @Override
    public String toString() {
        return nombre+";"+nif;
    }
    
      //------------------------------------------------
    static Cliente nuevoCliente(int perfil){
       return new Cliente(ES.leeDeTeclado("Nombre? "), ES.leeDeTeclado("NIF? ")); 
    }
    //--------------------------------------------------------------------------
    String detalleCliente(HashMap  <String,Pelicula> peliculasPorCodigo){
         String listado = nombre+":"+nif+"\n\tAlquileres...";
         int i=1;
                 
         for (Map.Entry<String, DVD> entry : peliculas.entrySet()) {
            String codigoPeli = entry.getKey();
            DVD    dvd        = entry.getValue();
            
            listado+="\n\t\t"+i+".- "+ 
                    peliculasPorCodigo.get(codigoPeli).getTitulo()+":"+codigoPeli+
                                                            "("+dvd.getNumCopia()+")";
            i++;
        }
                 
         
         return listado;
    }
    
}


