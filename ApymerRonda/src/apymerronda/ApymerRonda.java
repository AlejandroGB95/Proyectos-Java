/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package apymerronda;

import static Miscelanea.Miscelanea.*;
import java.util.HashSet;
import java.util.LinkedList;



/**
 *
 * @author usuario
 */
public class ApymerRonda {

    static HashSet<Empresa> listaEmpresas = new HashSet();
    
    public static void main(String[] args) {
        
         String[] menuP ={"Menú Principal","Añadir Empresa", "Añadir Empleado","Borrar Empresa", "Listar Empresas"};
         // empresas de prueva....
         
         listaEmpresas.add(new Empresa("Marcos Morilla"));
          listaEmpresas.add(new Empresa("Son de Dos"));
          listaEmpresas.add(new Empresa("Dragon Inf."));
          listaEmpresas.add(new Empresa("Muebles Rojas."));
        
        int opcionMenu;
        
        do {
            
            opcionMenu = pintaMenu(menuP);
            
            switch (opcionMenu){
                
                case 1:
                    System.out.println("Añadir a empresa");
                    break;
                case 2:
                    System.out.println("Añadir empleado empresa");
                    break;
                case 3:
                    System.out.println("Borrar empresa");
                    break;
                case 4:
                    System.out.println("Listar empresa");
                    Empresa empresa=(Empresa)Miscelanea.Miscelanea.seleccionaDeArray(listaEmpresas.toArray());
                    System.out.println(empresa);
                    break;    
            }

        }while (opcionMenu != menuP.length);
    }

}
