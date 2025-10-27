/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package videoclub;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/**
 *
 * @author Jose
 */
public class Pelicula implements Comparable<Pelicula>{
    private String codigo;
    private String titulo;
    private String director;
    private ArrayList <String> listaActores;
    
    private LinkedList <DVD>    copias;

    public Pelicula(String codigo, String titulo, String director) {
        this.codigo = codigo;
        this.titulo = titulo;
        this.director = director;
        listaActores= new ArrayList();
        copias      = new LinkedList();
    }

    public Pelicula(String codigo, String titulo, String director, ArrayList<String> listaActores) {
        this( codigo,  titulo,  director);
        this.listaActores = listaActores;
    }

    public ArrayList <String> getListaActores() {
        return listaActores;
    }

    public void setListaActores(ArrayList <String> listaActores) {
        this.listaActores = listaActores;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 97 * hash + Objects.hashCode(this.codigo);
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
        final Pelicula other = (Pelicula) obj;
        if (!Objects.equals(this.codigo, other.codigo)) {
            return false;
        }
        return true;
    }

   

    @Override
    public String toString() {
      return codigo+"*"+ titulo + "*"+ director + "*"
        +listaActores.toString().substring(1, listaActores.toString().length()-1)+"*"+copias.size();
    }

    @Override
    public int compareTo(Pelicula peli) {
        return this.titulo.compareToIgnoreCase(peli.titulo);
    }

    public String detallePelicula(){
        
        String descripcion=codigo+":"+titulo+"(dirigida por "+director+
                " e interpretada por "+listaActores+")\n\t"
                +copias;
        
        return descripcion;
    } 

    public List <DVD> getCopias() {
        return copias;
    }

    public void setCopias(LinkedList <DVD> copias) {
        this.copias = copias;
    }
    DVD alquila(){
        return copias.removeFirst();
    }
    
  
    
}

