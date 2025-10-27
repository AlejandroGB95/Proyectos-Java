/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package videoclub;

import Miscelanea.Miscelanea;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jose
 */
public class VideoClub {
    
    private String   nombre;
    private TreeSet  <Pelicula>            peliculasPorTitulo;
    private HashMap  <String,Pelicula>     peliculasPorCodigo;  //String -> Codigo Pelicula
    private TreeMap  <String,Cliente>      clientes;            //String -> nif del cliente         

    public VideoClub(String nombre) {
        this.nombre = nombre;
        peliculasPorTitulo= new TreeSet();
        peliculasPorCodigo= new HashMap();
        clientes          = new TreeMap();
    }
    
    
    public VideoClub(String nombre, String fichClientes, String fichPeliculas, String fichDisponibles) {
      this(nombre);
        int ctdClientes = cargaClientes(fichClientes);
        System.out.println("Se han cargado: "+ctdClientes +" Clientes en el Videoclub...");
        
        File fileDisp= new File(fichDisponibles);
        
        int ctdPelis= cargaPeliculas(fichPeliculas,fileDisp.exists());
        System.out.println("Se han cargado: "+ctdPelis +" Peliculas en el Videoclub...");
        
        if(fileDisp.exists())
            cargadisponibles(fileDisp);
     
    }

    public VideoClub(String nombre, TreeSet<Pelicula> peliculasPorTitulo, HashMap<String, Pelicula> peliculasPorCodigo, TreeMap<String, Cliente> clientes) {
        this(nombre);
        this.peliculasPorTitulo = peliculasPorTitulo;
        this.peliculasPorCodigo = peliculasPorCodigo;
        this.clientes = clientes;
       
    }

    public TreeMap  <String,Cliente> getClientes() {
        return clientes;
    }

    public void setClientes(TreeMap  <String,Cliente> clientes) {
        this.clientes = clientes;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public TreeSet  <Pelicula> getPeliculasPorTitulo() {
        return peliculasPorTitulo;
    }

    public void setPeliculasPorTitulo(TreeSet  <Pelicula> peliculasPorTitulo) {
        this.peliculasPorTitulo = peliculasPorTitulo;
    }

    public HashMap  <String,Pelicula> getPeliculasPorCodigo() {
        return peliculasPorCodigo;
    }

    public void setPeliculasPorCodigo(HashMap  <String,Pelicula> peliculasPorCodigo) {
        this.peliculasPorCodigo = peliculasPorCodigo;
    }
    
  //--------------------------------------------------------
   public int cargaClientes(String  fichClientes){
    BufferedReader entrada=null;
        try {
            String [] linea;
            Cliente cli;
            entrada = new BufferedReader(new FileReader(fichClientes));
            
            String s;
                while ((s = entrada.readLine()) != null) {
                    linea=s.split(";");
                    cli=new Cliente(linea[0],linea[1]);
                    clientes.put(cli.getNif(), cli);
                }
                //entrada.close();
        } catch (java.io.FileNotFoundException ex) {
            System.out.println("No se encuentra el fichero-> "+fichClientes);
        } catch (IOException ex) {
            System.out.println("Error de Entrada/Salida inesperado,"
                    + " cargando los clientes del Videoclub: "+ex.getMessage());
        }finally{
            try {
                entrada.close();
            } catch (IOException ex) {
                System.out.println("Error cerrando el fichero-> "+ ex.getMessage());
            }
        }
        return clientes.size();
    }
      //-------------------------------------------------------------------------
   public int cargaPeliculas(String fichPeliculas, boolean  hayDisponibles){
      BufferedReader entrada=null;
        try {
            String[] linea, linea2;
            String copia,s;
            ArrayList linea2Arr=new ArrayList();
            Pelicula pel;
            int numCopias;
            DVD dvd;
            entrada = new BufferedReader(new FileReader(fichPeliculas));
          
                while ((s = entrada.readLine()) != null) {
                    linea=s.split("\\*");
                    linea2=linea[3].split(",");
                    numCopias=Integer.parseInt(linea[4]);
                            
                    pel=new Pelicula(linea[0], linea[1], linea[2], new ArrayList(Arrays.asList(linea2)) );
                    
                    if(!hayDisponibles){ // Generear las copias DVD de esta peli......
                        for (int i = 1; i <=  numCopias; i++) {
                            dvd=new DVD(pel.getCodigo(), i);
                            pel.getCopias().add(dvd);
                        }
                    }
                    peliculasPorCodigo.put(linea[0], pel);
                    peliculasPorTitulo.add(pel);
                }
                
        } catch (java.io.FileNotFoundException ex) {
            System.out.println("No se encuentra el fichero-> "+fichPeliculas);
        } catch (IOException ex) {
            System.out.println("Error de Entrada/Salida inesperado,"
                    + " cargando los clientes del Videoclub: "+ex.getMessage());
        }finally{
            try {
                entrada.close();
            } catch (IOException ex) {
                System.out.println("Error cerrando el fichero-> "+ ex.getMessage());
            }
        }
        return peliculasPorCodigo.size();
    }
   //-------------------------------------------------------
    public void cargadisponibles(File fileDisp){
        String lineaDvd="";
        String[] datosDvd;
        DVD dvd;
        try {    
            BufferedReader disponibles = new BufferedReader(new FileReader(fileDisp));
            
            while( (lineaDvd=disponibles.readLine())!=null){
             datosDvd=   lineaDvd.split(":");
             dvd= new DVD(datosDvd[0], Integer.parseInt(datosDvd[1]));
             peliculasPorCodigo.get(dvd.getCodigo()).getCopias().add(dvd);
                
            }
          disponibles.close();
          
        } catch (FileNotFoundException ex) {
            System.out.println("Error cargando los DVDs disponibles-> "+ex.getMessage());
        } catch (IOException ex) {
            System.out.println("Error I/O, cargando los DVDs disponibles-> "+ex.getMessage());
        }
        
    }
    //--------------------------------------------------------------------------
    public void guardaClientes(String  fichClientes,boolean añadir){
       
       File file = new File(fichClientes);
       PrintWriter fichero;
       
       if(file.exists()|| añadir){
           
           try {
               fichero = new PrintWriter(new FileWriter(fichClientes,añadir));
               //-----guardar los clientes del videoclub en el fichero....
               
               for (Cliente cli : clientes.values()) 
                    fichero.println(cli);
                   //fichero.println(cli.getNombre()+";"+cli.getNif());
               
            fichero.close();
           } catch (IOException ex) {
               System.out.println("Error de E/S escribiendo en el fichero de Clientes...");
           }
       }
       else
            System.out.println("No se encuentra el fichero de Clientes -> "
                                + fichClientes);
        
    }
    //--------------------------------------------------------------------------------
    //-------------------------------------------------------
    public void guardaPeliculas(String  fichPeliculas,boolean añadir){
       
       File file = new File(fichPeliculas);
       PrintWriter fichero;
       
       if(file.exists() || añadir){
           
           try {
               fichero = new PrintWriter(new FileWriter(fichPeliculas,añadir));
               //-----guardar los clientes del videoclub en el fichero....
               
               for (Pelicula peli : peliculasPorTitulo) 
                    fichero.println(peli);
                   //fichero.println(cli.getNombre()+";"+cli.getNif());
               
            fichero.close();
           } catch (IOException ex) {
               System.out.println("Error de E/S escribiendo en el fichero de Clientes...");
           }
       }
       else
            System.out.println("No se encuentra el fichero de Peliculas -> "
                                + fichPeliculas);
        
        
    }
   //----------------------------------------
   //-------------------------------------------------------
    public void guardaEnFichero(String  rutaFichero,boolean añadir, Collection datos){
       
       File file = new File(rutaFichero);
       PrintWriter fichero;
       
       if(file.exists() || añadir){
           
           try {
               fichero = new PrintWriter(new FileWriter(rutaFichero,añadir));
               //-----guardar los clientes del videoclub en el fichero....
               
               for (Object obj : datos) 
                    fichero.println(obj);
                   //fichero.println(cli.getNombre()+";"+cli.getNif());
               
            fichero.close();
           } catch (IOException ex) {
               System.out.println("Error de E/S escribiendo en el fichero de Clientes...");
           }
       }
       else
            System.out.println("No se encuentra el fichero de Peliculas -> "
                                + rutaFichero);
        
        
    }
   //----------------------------------------
    //--------------------------------------------------------------------------
    public void altaCliente(String ruta){
        //Cliente c = new Cliente(ES.ES.leeDeTeclado("Nombre? "), ES.ES.leeDeTeclado("NIF? "));
        Cliente c= Cliente.nuevoCliente(1);
        clientes.put(c.getNif(), c);
        //reescribir el fichero
        String cliente = "";
        try {
            PrintWriter salida = new PrintWriter(new BufferedWriter(new FileWriter(ruta, true)));
                
                salida.println(c);
            
            salida.close();
        } catch (java.io.FileNotFoundException ex) {
            System.out.println("No se encuentra el fichero-> "+ruta);
        } catch (IOException ex) {
            System.out.println("Error al guardar los datos: "+ex.getMessage());;
        }
    }
    //--------------------------------------------------------------------------
    public void altaPelicula(String ruta){//Pelicula(String codigo, String titulo, String director, ArrayList <Persona> listaActores)
        String nombre = ES.ES.leeDeTeclado("Titulo de la pellicula?");
        String codigo = ES.ES.leeDeTeclado("Codigo de la pelicula?");
        String director = ES.ES.leeDeTeclado("Director de la pellicula?");
        String actores = ES.ES.leeDeTeclado("Lista de actores separados por coma ej(Peter,Leo,...)");
        
        Arrays.asList(actores.split(","));
        ArrayList listaActores = new ArrayList();
        listaActores.addAll( Arrays.asList(actores));
        
        
        Pelicula p = new Pelicula(codigo, nombre, director, listaActores);
        peliculasPorCodigo.put(p.getCodigo(), p);
        peliculasPorTitulo.add(p);
        
        
        //reescribir el fichero
        String pelicula = "";
        try {
            PrintWriter salida = new PrintWriter(new BufferedWriter(new FileWriter(ruta, true)));
            
                
                salida.println(p);
           
            salida.close();
        } catch (java.io.FileNotFoundException ex) {
            System.out.println("No se encuentra el fichero-> "+ruta);
        } catch (IOException ex) {
            System.out.println("Error al guardar los datos: "+ex.getMessage());;
        }
    }
    //--------------------------------------------------------------------------
    String listadoDePeliculas(){
        String listado ="";
        
        for (Pelicula peli : peliculasPorCodigo.values()) {
          listado+="\n\t"+  peli.detallePelicula();  
        }
        return listado;
    }
    //----------------------------------------------------
    String listadoDeClientes(){
       String listado ="";
       int i=1;
        
        for (Cliente cli : clientes.values()) {
          listado+="\n\t"+i+".- "+  cli.detalleCliente(peliculasPorCodigo); 
          i++;
        }
        return listado;
       
   }
    //---------------------------------------------------
    public void guardaVideoclub(){
       PrintWriter fichPelis,fichDisponibles,fichClientes,fichAlquileres=  null;
        try {
            
            //1.- Guardar peliculas -> peliculas.txt y copias -> disponibles.txt
            fichPelis = new PrintWriter(
                    new BufferedWriter(
                            new FileWriter("src/datos/peliculas.txt")));
            
            fichDisponibles = new PrintWriter(
                    new BufferedWriter(
                            new FileWriter("src/datos/disponibles.txt")));
            
            fichClientes = new PrintWriter(
                    new BufferedWriter(
                            new FileWriter("src/datos/clientes.txt")));
            
            fichAlquileres = new PrintWriter(
                    new BufferedWriter(
                            new FileWriter("src/datos/alquileres.txt")));
            
            for (Pelicula pelicula : peliculasPorTitulo) {
                fichPelis.println(pelicula);
                
                for (DVD copia : pelicula.getCopias()) {
                    fichDisponibles.println(copia);
                }
                
            }
            
            //1.- Guardar clientes -> clientes.txt y peliculas -> alquileres.txt
            for (Cliente cliente : clientes.values()) {
                fichClientes.println(cliente);
                
                for (DVD copia : cliente.peliculas.values()) {
                    fichAlquileres.println(copia.toString()+":"+cliente.getNif());
                }
                
            }
           
         fichPelis.close();fichDisponibles.close();fichClientes.close();
         fichAlquileres.close();
            
        } catch (IOException ex) {
            Logger.getLogger(VideoClub.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
           
        }
 
        
    }
    //----------------------------------------------------
   
    public String alquila(){
        // buscar Pelicula
      Pelicula pelicula=(Pelicula)Miscelanea.seleccionaDeArray(peliculasPorTitulo.toArray());
      
     // if(pelicula.getCopias().size()>0)
     if(pelicula==null)
         return "alquiler cancelad por el usuario";
     else{
       DVD copia=pelicula.alquila(); 
       if(copia==null)
           return "no hay existencias de esta pelicula";
       else{//alquiler...
           Cliente cliente=(Cliente)Miscelanea.seleccionaDeArray(clientes.values().toArray());
           cliente.alquila(copia);
            return "El cliente: "+ cliente.getNombre()+
                    "ha alqulilado la pelicula: "+pelicula.getTitulo();
       }
     }
   
    }
    
   public String devuelve(){
       Cliente cliente=(Cliente)Miscelanea.seleccionaDeArray(clientes.values().toArray());
       if (cliente==null){
           return "Cliente no seleccionado";
       }else{
           DVD copia=(DVD)Miscelanea.seleccionaDeArray(cliente.peliculas.values().toArray());
           if (copia==null){
               return "Devolucion cancelada por usuario";
           } else {
              cliente.devuelve(copia);
               return "El cliente "+ cliente.getNombre()+ " ha devuelto la pelicula: " + copia.getNumCopia();         
           }
       }
        
   }
}
