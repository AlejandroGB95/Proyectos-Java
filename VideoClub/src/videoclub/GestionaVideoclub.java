/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package videoclub;
import ES.ES;
import Miscelanea.Menu;

/**
 *
 * @author Usuario
 */
public class GestionaVideoclub {
    
    public static String datos[][] = {{"Menu Principal"},
    {"Cargar VideoClub"},
    {"Altas","Alta Cliente","Alta Pelicula"},
    {"Listar", "Listar Peliculas", "Listar Clientes","Listado de Alquileres"},
    {"Gestiones Dvds", "Alquilar DVD", "Devolver DVD"}};

    public static String ficheroClientes  ="src/datos/clientes.txt";
    public static String ficheroPeliculas ="src/datos/peliculas.txt";
    

    static VideoClub miVideoClub = new VideoClub("VideoClub Martin Rivero...",
                                        "src/datos/clientes.txt",
                                        "src/datos/peliculas.txt", 
                                        "src/datos/disponibles.txt");
   
    /*public static VideoClub videoclub=new VideoClub(ES.leeDeTeclado("Nombre?"),
                                                   ficheroClientes,ficheroPeliculas);*/
   
    public static void main(String[] args) {
        
         //11111111F
    
       miVideoClub.getClientes().get("11111111F").alquila(new DVD("0001", 1));
       miVideoClub.getClientes().get("11111111F").alquila(new DVD("0006", 5));
       /* 
        System.out.println("Listado de clientes del VideoClub...");
        System.out.println(miVideoClub.getClientes());
        
        System.out.println("Listado de Peliculas del VideoClub...");
        System.out.println(miVideoClub.getPeliculasPorTitulo());
        
        System.out.println("Guardando datos  del VideoClub...");
        
       // miVideoClub.guardaClientes("src/datos/clientes2.txt",true);
       // miVideoClub.guardaPeliculas("src/datos/peliculas2.txt",true);
        miVideoClub.guardaEnFichero("src/datos/clientes3.txt",true, 
                        miVideoClub.getClientes().values());
        miVideoClub.guardaEnFichero("src/datos/peliculas3.txt",true, 
                        miVideoClub.getPeliculasPorTitulo());*/
       
     
        int opc, opc2;

        do {
            opc = Menu.menuPrincipal(datos);
            switch (opc) {
                case 1://Cargar VideoClub................................

                   
                    
                    break;
                case 2:

                    do {//Altas...............................
                        opc2 = Menu.submenu(datos, opc);

                        switch (opc2) {
                            case 1:
                                    miVideoClub.altaCliente(ficheroClientes);
                                break;
                            case 2:
                                    miVideoClub.altaPelicula(ficheroPeliculas);

                                break;
                            case 3:
                                System.out.println("Saliendo de datos " + datos[opc][0]);
                                break;
                        }

                    } while (opc2 != datos[opc].length);

                    break;
                case 3://Listados...............................

                    do {
                        opc2 = Menu.submenu(datos, opc);

                        switch (opc2) {
                            case 1:
                                System.out.println(miVideoClub.listadoDePeliculas());

                                break;
                            case 2:
                                 System.out.println(miVideoClub.listadoDeClientes());   
                                break;
                            case 3:

                                break;    
                            case 4:
                                System.out.println("Saliendo de datos " + datos[opc][0]);
                                break;
                        }

                    } while (opc2 != datos[opc].length);

                    break;
                    
                case 4://Gestiones Dvds.................................
                    
                    do {
                        opc2 = Menu.submenu(datos, opc);

                        switch (opc2) {
                            case 1:
                                        System.out.println(miVideoClub.alquila());
                                break;
                            case 2:
                                        System.out.println(miVideoClub.devuelve());
                                break;
                            case 3:
                                System.out.println("Saliendo de datos " + datos[opc][0]);
                                break;
                        }

                    } while (opc2 != datos[opc].length);
                    
                case 5://Salir................................................
                    System.out.println("Finalizando Programa y guardando datos");
                    //videoclub.guardaClientes(ficheroClientes, false);
                    //videoclub.guardaPeliculas(ficheroPeliculas, false);
                    miVideoClub.guardaEnFichero(ficheroClientes, false, miVideoClub.getClientes().values());
                    break;
            }

        } while (opc != datos.length);
       //Guardamos el estado actual del Videoclub.......
       miVideoClub.guardaVideoclub();
       
                
    }//main
  //----------------------------------------------------------------------------  
    
}
