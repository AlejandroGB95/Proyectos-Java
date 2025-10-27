/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pueblosdeespaña;

import Bd.ConectaBD;
import ES.ES;
import Miscelanea.Miscelanea;
import java.io.BufferedReader;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Scanner;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Usuario
 */
public class PueblosDeEspaña {

    static TreeMap<String,  Comunidad>  listaComunidades = new TreeMap();
    static TreeMap<Integer, Provincia> listaProvincias   = new TreeMap();
    static TreeMap<Integer, Poblacion> listaPueblos      = new TreeMap();
    static TreeMap<Integer, Poblacion> listaPueblosObj     = new TreeMap();
    
    public static void main(String[] args) {
        String[] opciones={"Menú Principal","Listados","Consultas","Altas","Guardar Pueblos"};
        String[] opcionesL={"Listados",
                                "Listado Completo",
                                "Listado De Provincias",
                                "Listado de pueblos",
                                "Listar los pueblos cardinales",
                                "Listar pueblo con nombre mas largo/corto",
                                "Listar pueblos mas largo/cortos con SQL"};
        String[] opcionesB={"Consultas",
                                "Consulta de pueblo por nombre",
                                "Consulta de pueblo por CP",
                                "Consulta de pueblo por nombre parcial",
                                "Dado un pueblo, el más cercano"};
        String[] opcionesA={
            "Altas",
            "Cargar pueblos nuevos (NO SIRVE)",
            "Crear pueblos nuevos e insertarlos en la BD"
        };
        
        String[] opcionesG={
            "Carga / Guarda",
            "Guardar pueblos en fichero de Objetos (pueblos.dat)",
            "Cargar los pueblos del fichero de Objetos (pueblos.dat)"
        };
  
        ArrayList<PueblosNSEO>[] pueblosEspeciales2;
        
        int opcion, opcion2;
        Comunidad comunidad;
        Provincia provincia;
        String nombre;
        
      //...Cargar datos................................................................................
        Connection conn = ConectaBD.conectaBD("mysql", "localhost", "3306", "prog", "prog", "prog");
        cargaComunidades(conn, "select * from comunidades");
        //cargaComunidades2(conn, "select * from comunidades");
        cargaProvincias(conn, "select * from provincias");
        cargaPueblos(conn, "select * from poblaciones");
      //...............................................................................................
      do {
            opcion = Miscelanea.pintaMenu(opciones);
            switch (opcion) {
                case 1://LISTADOS...............................................
                    do {
                        opcion2 = Miscelanea.pintaMenu(opcionesL);
                        switch (opcion2) {

                            case 1:
                                System.out.println(listadoCompleto());
                                break;
                            case 2: //listado provincias
                                System.out.println("");
                                comunidad = (Comunidad) Miscelanea.seleccionaDeArray(listaComunidades.values().toArray());
                                System.out.println(comunidad.listadoProvincias());
                                break;
                            case 3: //listado pueblos
                                System.out.println("");
                                comunidad = (Comunidad) Miscelanea.seleccionaDeArray(listaComunidades.values().toArray());
                                System.out.println("");
                                provincia = (Provincia) Miscelanea.seleccionaDeArray(comunidad.getProvincias().values().toArray());
                                System.out.println("\nListado de "+provincia.getProvincia()+"\n"+provincia.listadoCompleto());
                                break;
                            case 4:
                                System.out.println(pueblosNSEO());
                                break;
                            case 5:
                                 pueblosEspeciales2 =pueblos_NombreMm();
                       // guadaInforme("Pueblos Largo_corto de España", pueblosEspeciales.toString());
                        System.out.println("Pueblos mas largos de ESpaña:" +pueblosEspeciales2[0]);
                        System.out.println("Pueblos mas cortos de ESpaña:" +pueblosEspeciales2[1]);
                                break;
                            case 6:
                                ConectaBD.ejecutaSentencia(conn, "SELECT POBLACION, CHARACTER_LENGTH(POBLACION) 'Largo' FROM `poblaciones` "
                                        + "WHERE CHARACTER_LENGTH(POBLACION)<=2;");
                                break;
                        }
                    } while (opcion2 != opcionesL.length);
                    break;
                    
                    
                case 2://BUSQUEDAS..............................................
                    do{
                         opcion2 = Miscelanea.pintaMenu(opcionesB);
                         switch (opcion2){
                             case 1: //Busquedas por nombre
                                 ArrayList nPp=pueblosPorNombre();
                                 if (nPp.size()==1)
                                     System.out.println("No existe un pueblo con nombre: "+nPp.get(0));
                                 else
                                     for (int i = 0; i < nPp.size(); i+=3) {
                                         System.out.println(nPp.get(i)+": "+nPp.get(i+1)+" -> "+nPp.get(i+2));
                                     }
                                     
                                 break;
                             
                             case 2: //Busquedas por cp
                                 ArrayList cPp=pueblosPorCp();
                                 if (cPp.size()==1)
                                     System.out.println("No existe un pueblo con el CP: "+cPp.get(0));
                                 else
                                     System.out.println(cPp.get(0)+": "+cPp.get(1)+" -> "+cPp.get(2));
                                     break;
                             
                             case 3://Busqueda por nombre parcial
                                 ArrayList npPp=pueblosPorNombre();
                                 if (npPp.size()==1)
                                     System.out.println("No existe un pueblo que contenga: "+npPp.get(0));
                                 else{
                                     if (npPp.size()>3){
                                         Miscelanea.seleccionaDeArray(npPp.toArray());
                                     }
                                     for (int i = 0; i < npPp.size(); i+=3) {
                                         System.out.println(npPp.get(i)+": "+npPp.get(i+1)+" -> "+npPp.get(i+2));
                                     }
                                 }   
                                 break;
                             case 4://Pueblo mas cercano...........
                                 
                                         puebloMasCercano();
                                    
                                 break;
                         }
                    } while(opcion2!=opcionesB.length);
                    break;
                    
                case 3: //ALTAS.................................................
                    do{
                        opcion2 = Miscelanea.pintaMenu(opcionesA);
                         switch (opcion2){
                             case 1:
                                 cargaPueblosNuevos(conn);
                                 break;
                             case 2:
                                 System.out.println("[!] Opcion no creada...");
                                //insertaPuebloBD(conn);
                                 break;
                         }
                    } while(opcion2!=opcionesA.length);
                    break;
                    
                case 4: //CARGA PUEBLOS.........................................
                    do{
                        opcion2= Miscelanea.pintaMenu(opcionesG);
                        switch (opcion2){
                            case 1: //Guardar fichero de objetos
                                System.out.println("Guardando objetos de pueblos...");
                                guardaPuebloObjetos();
                                break;
                            case 2: //Leer fichero de objetos
                                System.out.println("Leer objetos de pueblos...");
                                recuperaPuebloObjetos();
                                break;
                        }
                    }while(opcion2!=opcionesG.length);
            }
        } while (opcion != opciones.length);
        
      
        
    }//FIN MAIN-----------------------------------------------------------------

 
    //--------------------------------------------------------------------------
       
    static String puebloMasCercano() {
        ArrayList origenPueblo = pueblosPorNombre();
        float difLat=1000, difLong=1000, difLatActual;
        String puebloCercano="No existen pueblos cercanos...";
        Poblacion puebloOrigen=null;
        if (origenPueblo.size()==1) {
            System.out.println("No existe un pueblo con ese nombre");
        } else {
           
             puebloOrigen = (Poblacion)origenPueblo.get(2);
           Collection<Poblacion> pueblosPosibles = ((Provincia)origenPueblo.get(1)).getlistaPueblos().values();
           pueblosPosibles.remove(puebloOrigen);
           
            for (Poblacion pueblosPosible : pueblosPosibles) {
                difLatActual=Math.abs(puebloOrigen.getLatitud()-pueblosPosible.getLatitud());
                if (difLatActual<difLat){
                    difLat=difLatActual;
                 puebloCercano=pueblosPosible.getPoblacion();
                }
            }
           
           
        }
        System.out.println("El pueblo más cercano a < "+puebloOrigen+" > es: "+puebloCercano);
        return puebloCercano;
    }
    
    static void insertaPuebloBD(Connection conn, ArrayList<Poblacion> listaPueblos){
       /*
        int idpoblacion=11111,idprovincia=19,postal=29000;
        float latitud=12.3f, longitud=-12.0f;
        String poblacion="Hay", poblacionseo=poblacion.toLowerCase();
        */
       
        try {
            PreparedStatement pstm = conn.prepareStatement("INSERT INTO POBLACIONES"
                    + "(IDPOBLACION, IDPROVINCIA, POBLACION, POBLACIONSEO, POSTAL, LATITUD, LONGITUD) "
                    + "VALUES(?,?,?,?,?,?,?)");

            for (Poblacion pueblo : listaPueblos) {
                pstm.setInt(1, pueblo.getIdpoblacion());
                pstm.setInt(2, pueblo.getIdprovincia());
                pstm.setString(3, pueblo.getPoblacion());
                pstm.setString(4, pueblo.getPoblacionseo());
                pstm.setInt(5, pueblo.getPostal());
                pstm.setFloat(6, pueblo.getLatitud());
                pstm.setFloat(7, pueblo.getLongitud());

                pstm.executeUpdate();

            }

            pstm.close();

        } catch (SQLException ex) {
            System.out.println("[!] Error en la sentencia SQL");
        }
    }
    
    static int cargaComunidades(Connection conn, String select){
        Statement stmt;
        ResultSet rset;
        String nombre,codigo;
        Comunidad comu;
        try {
            stmt = conn.createStatement();

            rset = stmt.executeQuery(select);

            while (rset.next()) {
               nombre = rset.getString(1);
               codigo = rset.getString(2);
               
               comu = new Comunidad(codigo,nombre);
               listaComunidades.put(codigo, comu);
               comu.cargaProvincias(conn, "SELECT * FROM PROVINCIAS WHERE COMUNIDAD='"+codigo+"'");
               //listaComunidades.put(rset.getString(2),new Comunidad(rset.getString(1),rset.getString(2)));
            }

            rset.close();
            stmt.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listaComunidades.size();
    }
    
    static String listadoCompleto(){
        String listado="";
        int i=1;
        for (Comunidad comunidad : listaComunidades.values()) {
            listado+="\n\n"+i+".- Listado de "+comunidad;
            listado+="\n------------------------------------------------------------------------------------";
            listado+=comunidad.listadoCompleto();
            i++;
        }
        
        return listado;
    }
    
    static ArrayList<String> pueblosPorCp(){
        ArrayList<String> ComuProvPueb = new ArrayList();
        Poblacion pueblo;
        String    cp;
        Integer   cpPueblo=-1;
        do {
            cp = ES.leeDeTeclado("Introduce el CP del pueblo a buscar... ");
        } while(!cp.matches("[0-9]{1,5}"));
        
        cpPueblo= Integer.parseInt(cp);
        
        for (Comunidad comu : listaComunidades.values()) {
            for (Provincia prov : comu.getProvincias().values()) {
                if ((pueblo = prov.getlistaPueblos().get(cpPueblo))!=null){
                    ComuProvPueb.add(comu.getNombre());
                    ComuProvPueb.add(prov.getProvincia());
                    ComuProvPueb.add(pueblo.getPoblacion());
                    
                    return ComuProvPueb;
                }
            }
        }
        ComuProvPueb.add(cp);
        return ComuProvPueb;
    }
    
    static void pueblosPorCp2() {
        int cpPueblo = ES.leeN("Escribe el Cp del pueblo a buscar? ", 0, 99999);

        Poblacion pb = listaPueblos.get(cpPueblo);
        Provincia pv = listaProvincias.get(pb.getIdprovincia());
        Comunidad cm = listaComunidades.get(pv.getAbreviatura());
    }
    
    static ArrayList pueblosPorNombre(){
        ArrayList ComuProvPueb = new ArrayList();
       
        String    nombre;
       
        nombre = ES.leeDeTeclado("Escribe el nombre del pueblo a buscar... ");
        
        for (Comunidad comu : listaComunidades.values()) {
            for (Provincia prov : comu.getProvincias().values()) {
                for (Poblacion pueblo : prov.getlistaPueblos().values()) {
                     if (pueblo.getPoblacion().toUpperCase().contains(nombre.toUpperCase())){
                    ComuProvPueb.add(comu);
                    ComuProvPueb.add(prov);
                    ComuProvPueb.add(pueblo);
                }
                }
               
            }
        }
        if (ComuProvPueb.isEmpty())
            ComuProvPueb.add(nombre);
            
        return ComuProvPueb;
    }
    
    static PueblosNSEO creaPuebloNSEO(Poblacion pueblo, String caracteristicas){
        return new PueblosNSEO(pueblo.getPoblacion(), 
                listaProvincias.get(pueblo.getIdprovincia()).getProvincia(), 
                listaComunidades.get(listaProvincias.get(pueblo.getIdprovincia()).getComunidad()).getNombre(), 
                pueblo.getLatitud(), 
                pueblo.getLongitud(), 
                caracteristicas);
    }
    
    static ArrayList<PueblosNSEO> pueblosNSEO() {
        float norte=0, sur= 1000, este=-1000, oeste=1000;
       
        PueblosNSEO puebloNorte=null,puebloSur=null, 
                    puebloEste=null,puebloOeste=null;
                   
        for (Poblacion pueblo:listaPueblos.values()) {
            // Latitud
            if (pueblo.getLatitud()>norte) {
                norte=pueblo.getLatitud();
                puebloNorte=creaPuebloNSEO(pueblo,"Pueblo mas al norte");
            }
            else if(pueblo.getLatitud()< sur){
                sur=pueblo.getLatitud();
                puebloSur=creaPuebloNSEO(pueblo,"Pueblo mas al sur");
            }
            // Longitud
            if (pueblo.getLongitud() < oeste) {
                oeste=pueblo.getLongitud();
                puebloOeste=creaPuebloNSEO(pueblo,"Pueblo mas al oeste");
            }
            else if(pueblo.getLongitud()> este){
                este=pueblo.getLongitud();
                puebloEste=creaPuebloNSEO(pueblo,"Pueblo mas al este");
            }
            
           
        }
        ArrayList<PueblosNSEO> listaPueblos=   new ArrayList();
        listaPueblos.add(puebloNorte);listaPueblos.add(puebloSur);
        listaPueblos.add(puebloEste);listaPueblos.add(puebloOeste);
      
        guardaInforme(listaPueblos.toString(),"NSEO");
        
        return listaPueblos;
    }
      
    static ArrayList<PueblosNSEO>[] pueblos_NombreMm() {
        int           nombreLargo=0, nombreCorto=150;
        PueblosNSEO   puebloLargo=null, puebloCorto=null;
        ArrayList pueblosLargos=new ArrayList() ,pueblosCortos = new ArrayList();
        int largura;
        
        ArrayList<PueblosNSEO>[] pueblosNombreMm = new ArrayList[2];
        
        String nombre="";
        for (Poblacion pueblo:listaPueblos.values()) {
             largura=pueblo.getPoblacion().length();
             // Nombre
            if (largura >= nombreLargo) {
                puebloLargo=creaPuebloNSEO(pueblo,"Pueblo con el nombre mas largo");
                if(largura>nombreLargo){
                    pueblosLargos.clear();
                    pueblosLargos.add(puebloLargo);
                    nombreLargo=largura;
                }
                else{
                    pueblosLargos.add(puebloLargo);
                }
            }
            else if(largura <= nombreCorto){
                puebloCorto=creaPuebloNSEO(pueblo,"Pueblo con el nombre mas corto");
                if(largura < nombreCorto){
                    pueblosCortos.clear();
                    pueblosCortos.add(puebloCorto);   
                    nombreCorto=pueblo.getPoblacion().length();
                }
                else
                    pueblosCortos.add(puebloCorto);   
            }
            
        }
        pueblosNombreMm[0]=pueblosLargos;
        pueblosNombreMm[1]=pueblosCortos;
       
        String informe = pueblosNombreMm[0] +"\n" + pueblosNombreMm[1];
        guardaInforme(informe,"Longitud");
        
        return pueblosNombreMm;
    }
    
    static void guardaInforme(String informe, String nomfichero){
        
        
         Scanner teclado = new Scanner(System.in);
        PrintWriter fichero = null;
        File ruta = new File("src/datos/Pueblos"+nomfichero+".txt");
        boolean machaca=false;
        
        if (ruta.exists()){
            System.out.println("El fichero ya existe, quieres sobreescribirlo? (S/N): ");
             machaca=(teclado.next().equalsIgnoreCase("S"))?false:true;
            
        }
       try {
            fichero = new PrintWriter(new FileWriter(ruta,machaca));
            
            fichero.println("\t\t"+nomfichero.toUpperCase());
            fichero.println("--------------------------------------------------------------------------------------");
            fichero.println(informe);
            fichero.println();
            
            System.out.println("\nEl fichero ha sido creado con éxito...\n");
       
            
        } catch (IOException ex) {
            System.out.println("ERROR | Error de entrada/salida inesperado");
        } finally {
           fichero.close();
       }
        } 
    
    static void cargaPueblosNuevos(Connection conn){
        File file = new File("src/datos");
        
            /*
            ArrayList<String> listaficheros = new ArrayList();

            for (File fichero : file.listFiles()) {
                listaficheros.add(fichero.getName());
            }
            */
        
        
        File ficheroEleg = (File) Miscelanea.seleccionaDeArray(file.listFiles());
        System.out.println("Has seleccionado el fichero: "+ficheroEleg);
        
        //1. Cargar los pueblos en memoria
        
        if (!ficheroEleg.equals("null")){
          
         Scanner sc;
            try {
                
                sc = new Scanner(ficheroEleg);
                int idProv, postal, idPoblacion;
                String poblacion, poblacionSeo;
                float latitud, longitud;
                Poblacion pueblo=null;
                int i=0;
                
                ArrayList<Poblacion> pueblosNuevos = new ArrayList();
                while (sc.hasNext()){
                    
                    idProv=sc.nextInt();
                    poblacion=sc.next();
                    poblacionSeo=sc.next();
                    postal=sc.nextInt();
                    latitud=sc.nextFloat();
                    longitud=sc.nextFloat();
                
                    idPoblacion=listaPueblos.get(listaPueblos.lastKey()).getIdpoblacion()+1;
                    
                    
                    
                    pueblo = new Poblacion(idPoblacion, poblacion, poblacionSeo, postal, latitud, longitud, idProv);
                    
                    listaPueblos.put(postal, pueblo);
                    
                    Provincia provincia = listaProvincias.get(idProv);
                    Comunidad comunidad = listaComunidades.get(provincia.getComunidad());
                    
                    comunidad.getProvincias().get(idProv).getlistaPueblos().put(postal, pueblo);
                    i++;
                    
                    //2. Insertar pueblo en la BD
            
                    //insertaPuebloBD(pueblo, conn);
                    pueblosNuevos.add(pueblo);
                    
                }
                insertaPuebloBD(conn,pueblosNuevos);
                System.out.println("\nSe han añadido "+i+" pueblos con éxito...\n");
            
            
            } catch (FileNotFoundException ex) {
                System.err.println("[!] Fichero no encontrado");
            }
         
        } else {
            System.err.println("[!] Fichero no seleccionado");
        }
        
    }
    
    static void insertaPuebloBD(Poblacion pueblo, Connection conn){
        try {
            Statement stm = conn.createStatement();
            
            stm.executeUpdate("INSERT INTO POBLACIONES "
                    +"(POBLACION,POBLACIONSEO,IDPOBLACION,IDPROVINCIA,LATITUD,LONGITUD,POSTAL)"
                    +"VALUES ("+
                        "'"+pueblo.getPoblacion()+"',"+
                        "'"+pueblo.getPoblacionseo()+"',"+
                        pueblo.getIdpoblacion()+","+
                        pueblo.getIdprovincia()+","+
                        pueblo.getLatitud()+","+
                        pueblo.getLongitud()+","+
                        pueblo.getPostal()
                    +");");
            
        } catch (SQLException ex) {
            System.err.println("[!] Error en la sentencia SQL: "+ex.getMessage());
        }
    }
    
//---- METODOS MÍOS --------------------------------------------------------------------------------------
    static String busca(int cp){
        Poblacion pueblo=null;
        for (Comunidad comunidad : listaComunidades.values()) {
            pueblo=comunidad.buscaPueblo(cp);
            if (pueblo!=null)
                return "El CP "+cp+" pertenece a "+pueblo.getPoblacion();
        }
        return "No se encuentra ningún pueblo con CP: "+cp;
        
    }
    static String busca(String nombre, int opc){
        Provincia Provpueblo=null;
        for (Comunidad comunidad : listaComunidades.values()) {
            Provpueblo=comunidad.buscaPueblos(nombre,opc);
            if (Provpueblo!=null)
               return nombre+" es de: "+comunidad.getProvinciaNombre(Provpueblo.getIdprovincia())+", "+comunidad.getNombre();
               
            }
        return "No se encuentra ningún pueblo llamado: "+nombre;
    }
    static String puebloCoordenadas(String lugar){
        Poblacion pueb=listaPueblos.get(listaPueblos.firstKey());
        
        switch (lugar){
            case "Norte":
                for (Poblacion pueblo : listaPueblos.values()) {
                    if (pueblo.getLatitud()>pueb.getLatitud())
                        pueb=pueblo;
                }
                break;
            case "Sur":
                for (Poblacion pueblo : listaPueblos.values()) {
                    if (pueblo.getLatitud()<pueb.getLatitud())
                        pueb=pueblo;
                }
                break;
            case "Este":
                for (Poblacion pueblo : listaPueblos.values()) {
                    if (pueblo.getLongitud()>pueb.getLongitud())
                        pueb=pueblo;
                }
                break;
            case "Oeste":
                for (Poblacion pueblo : listaPueblos.values()) {
                    if (pueblo.getLongitud()<pueb.getLongitud())
                        pueb=pueblo;
                }
                break;
        }
        
        return "El pueblo más al "+ lugar +" es: " + pueb.getPoblacion() +" ("+
                listaProvincias.get(pueb.getIdprovincia()).getComunidad()+", "+listaProvincias.get(pueb.getIdprovincia()).getProvincia()+")\n\t "
                +"Latitud: "+pueb.getLatitud()+", Longitud: "+pueb.getLongitud();
    }
    static String longitudNombre(String longitud){
        Poblacion pueb=listaPueblos.get(listaPueblos.firstKey());
        switch (longitud){
            case "Largo":
                for (Poblacion pueblo : listaPueblos.values()) {
                    if (pueblo.getPoblacion().length()>pueb.getPoblacion().length())
                        pueb=pueblo;
                }
                break;
            case "Corto":
                 for (Poblacion pueblo : listaPueblos.values()) {
                    if (pueblo.getPoblacion().length()<pueb.getPoblacion().length())
                        pueb=pueblo;
                }
                break;
        }
          
            return "El pueblo con el nombre más "+ longitud +" es: "+
                    pueb.getPoblacion()+" ("+listaProvincias.get(pueb.getIdprovincia()).getComunidad()+", "+listaProvincias.get(pueb.getIdprovincia()).getProvincia()+")";
    }
//------------------------------------------------------------------------------------------------------------
       
    static int cargaComunidades2(Connection conn, String select){
        Statement stmt;
        ResultSet rset;
        String nombre,codigo;
        Comunidad comu;
        try {
            stmt = conn.createStatement();

            rset = stmt.executeQuery(select);

            while (rset.next()) {
               nombre = rset.getString(1);
               codigo = rset.getString(2);
               
               comu = new Comunidad(codigo,nombre);
               listaComunidades.put(codigo, comu);
               
               //listaComunidades.put(rset.getString(2),new Comunidad(rset.getString(1),rset.getString(2)));
            }

            rset.close();
            stmt.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listaComunidades.size();
    }
   
    static int cargaProvincias(Connection conn, String select){  //  private TreeMap<Integer, Provincia> listaProvincias; //key = idProvincia
        Statement stmt;
        ResultSet rset;
        try {
            stmt = conn.createStatement();

            rset = stmt.executeQuery(select);
              int idprovincia, cp;
              String comunidad, provincia, provinciaMin,abreviatura;
              Provincia prov;
            while (rset.next()) {
              comunidad = rset.getString(1);
              idprovincia=rset.getInt(2);
              provincia=rset.getString(3);
              provinciaMin=rset.getString(4);
              abreviatura=rset.getString(5);
              cp=rset.getInt(6);
               prov=new Provincia(idprovincia, provincia, provinciaMin, abreviatura, cp, comunidad);
               
               listaProvincias.put(idprovincia, prov);
             
            }

            rset.close();
            stmt.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listaProvincias.size();
    }
    
    static int cargaPueblos(Connection conn, String select){  // private TreeMap<Integer, Poblacion> listaPueblos; //key = cp
        Statement stmt;
        ResultSet rset;
        try {
            stmt = conn.createStatement();

            rset = stmt.executeQuery(select);
              int idPueblo, idProvincia, postal;
              String poblacion, poblacionMinus;
              Float latitud, longitud;
              
            while (rset.next()) {
               idPueblo = rset.getInt(1);
               idProvincia = rset.getInt(2);
               poblacion = rset.getString(3);
               poblacionMinus = rset.getString(4);
               postal = rset.getInt(5);
               latitud = rset.getFloat(6);
               longitud = rset.getFloat(7);
               
               listaPueblos.put(idPueblo, new Poblacion(idPueblo, poblacion, poblacionMinus, postal, latitud, longitud, idProvincia));
            }

            rset.close();
            stmt.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listaPueblos.size();
    }
    
    static void guardaPuebloObjetos(){
        try {
            ObjectOutputStream escFich = new ObjectOutputStream(new FileOutputStream("src/datos/pueblos.dat"));
            
            for (Poblacion pueblo : listaPueblos.values()) {
                 escFich.writeObject(pueblo);
             }
             
            escFich.close();
        } catch (FileNotFoundException ex) {
            System.out.println("[!] ERROR| Fichero no encontrado... -> "+ex.getMessage());
        } catch (IOException ex) {
            System.out.println("[!] ERROR| Error de entrada/salida inesperado... -> "+ex.getMessage());
        } 
    }
    
    static void recuperaPuebloObjetos(){
        Poblacion pueblo=null;
        ObjectInputStream leeFich = null;
        try {
            leeFich= new ObjectInputStream(new FileInputStream("src/datos/pueblos.dat"));
            
            do{
                pueblo=(Poblacion)leeFich.readObject();
                listaPueblosObj.put(pueblo.getPostal(), pueblo);
            } while (true);
            
        } catch (EOFException ex){
            System.out.println("Se ha terminado de leer el fichero...");
        } catch (FileNotFoundException ex) {
            System.out.println("[!] ERROR| Fichero no encontrado... -> "+ex.getMessage());
        } catch (IOException ex) {
            System.out.println("[!] ERROR| Error de entrada/salida inesperado... -> "+ex.getMessage());
        } catch (ClassNotFoundException ex) {
            System.out.println("[!] ERROR | Clase no encontrada... -> "+ex.getMessage());
        } finally {
            try {
                leeFich.close();
            } catch (IOException ex) {
            System.out.println("[!] ERROR| Error de entrada/salida cerrando los ficheros... -> "+ex.getMessage());
            }
        }
        
            System.out.println(listaPueblosObj);
    }
    
}