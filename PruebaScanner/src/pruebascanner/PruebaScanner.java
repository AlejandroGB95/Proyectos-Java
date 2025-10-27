/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pruebascanner;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.TreeMap;

/**
 *
 * @author Usuario
 */
public class PruebaScanner {

    static TreeMap<String,Provincia> listaDeProvincias = new TreeMap();
    
    public static void main(String[] args) throws FileNotFoundException {
       Scanner sc = new Scanner(new File("src/datos/provincias.txt"));
       Scanner scProv;
       
       String  prov         = "",
               comu         = "", 
               nomProv      = "", 
               nomProvMinus = "", 
               abr          = "";
       
       int     idProv       = 0, 
               codPost      = 0;
       
       sc.nextLine();
       while (sc.hasNext()){
            prov = sc.nextLine();
            scProv = new Scanner(prov);
            
            scProv.useDelimiter(":");
            comu = scProv.next();
            
            scProv.useDelimiter(",");
            while (scProv.hasNext()){
                
              idProv        = Integer.parseInt(scProv.next().substring(1));
              nomProv       = scProv.next();
              nomProvMinus  = scProv.next();
              abr           = scProv.next();
              codPost       = scProv.nextInt();
            
            }
            Provincia provn=new Provincia(comu, idProv, nomProv, nomProvMinus, abr, codPost);
            System.out.println(provn);
       }
       
       
        for (Provincia dato : listaDeProvincias.values()) {
            System.out.println(dato);
        }
    }//-- cierre de main --
}
