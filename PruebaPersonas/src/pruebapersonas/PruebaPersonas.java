/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pruebapersonas;

/**
 *
 * @author Usuario
 */
public class PruebaPersonas {

   static Persona listaPersonas[] = new Persona[10];
    
    
    public static void main(String[] args) {
        String[] menu ={"Menú Principal","Alta Persona","Listar","Buscar Nif","Busqueda General"};
        String[] menu2 ={"Menú busqueda","Buscar por nombre","Buscar por apellido","Buscar por sexo","Buscar por Nif","Buscar por localidad"};
        
         listaPersonas[0] = new Persona("Pepe","Garcia",'H',"33333333L", "Madrid");
        listaPersonas[1] = new Persona("Lola","Torres",'M',"98765432F", "Barcelona");
        listaPersonas[2] = new Persona("Veronica","Perez",'M',"12345678O", "Málaga");
    
        
    
        
        int opc;
        int opc2;
        do{
            opc=pintaMenu(menu);
            
            switch (opc){
                case 1:
                    altaPersona();
                    listaPersona();
                    break;
                case 2:
                    listaPersona();
                    break;
                case 3:
                   
                   String nif = ES.leeDeTeclado("Escribe NIF de la persona a buscar");
                   int pos = buscaPersona(nif);
                   
                   if (pos==-1)
                        System.out.println("No Existe ninguna persona con ese nif");
                   else
                        System.out.println(listaPersonas[pos]);                  
                    break;
                    
                case 4:     //Abrimos un Submenu para saber que quiere buscar el usuario
                    opc2=pintaMenu2(menu2);
                    
                    switch(opc2){
                        
                        case 1:
                            String nombre = ES.leeDeTeclado("Escribe nombre de la persona a buscar");
                            int pos2 = listaPersonasPor(nombre,"nombre");
                   
                            if (pos2==-1)
                                System.out.println("No Existe ninguna persona con ese nombre");
                            
                            break;               
                            
                        case 2:
                            String apellido = ES.leeDeTeclado("Escribe apellido de la persona a buscar");
                            pos2 = listaPersonasPor(apellido,"apellidos");
                   
                            if (pos2==-1)
                                System.out.println("No Existe ninguna persona con ese apellido");
                                             
                            break;    
                            
                        case 4:
                            nif = ES.leeDeTeclado("Escribe NIF de la persona a buscar");
                            pos2 = listaPersonasPor(nif,"nif");
                   
                            if (pos2==-1)
                                System.out.println("No Existe ninguna persona con ese nif");
                                         
                            break;                            
                            
                        case 5:                       
                            String localidad = ES.leeDeTeclado("Escribe la localidad de la persona a buscar");
                            pos2 = listaPersonasPor(localidad,"localidad");
                   
                            if (pos2==-1)
                                System.out.println("No Existe ninguna persona con esa localidad");
                                          
                            break; 
                            
                        default:
                            System.out.println("Opción incorrecta, elija otra!");
					} 
                    break;
                    
                case 5:
                    System.out.println("fin de la aplicación....");
                    break;
                default:
                     System.out.println("Opción incorrecta, elija otra!");
            } 
            
         }while (opc != menu.length+1);       
        
    }
    static int listaPersonasPor(String dato,String atributo){
        int pos=-1;
        String valor;
        int cont=1;
        
        System.out.println("Listado de Personas por: "+atributo);
         
        switch(atributo){
            case "nombre":
                 for (int i = 0; i < Persona.ctd ; i++) 
                     if(listaPersonas[i].getNombre().equals(dato)){
                        pos= i; 
                        System.out.println(cont+".- "+listaPersonas[i]); 
                        cont++;
                     }
                break;
            
             case "nif":
                 for (int i = 0; i < Persona.ctd ; i++) 
                     if(listaPersonas[i].getNif().equals(dato)){
                        pos= i; 
                        System.out.println(cont+".- "+listaPersonas[i]);  
                          cont++;
                     }
                break; 
             case "apellidos":
                 for (int i = 0; i < Persona.ctd ; i++) 
                     if(listaPersonas[i].getApellidos().equals(dato)){
                        pos= i; 
                        System.out.println(cont+".- "+listaPersonas[i]);
                          cont++;
                     }
                break;
             case "localidad":
                 for (int i = 0; i < Persona.ctd ; i++) 
                     if(listaPersonas[i].getLocalidad().equals(dato)){
                        pos= i; 
                        System.out.println(cont+".- "+listaPersonas[i]); 
                          cont++;
                     }
                break;   
            
        };
     
        return pos;
    }
   //---------------------------------------------------------------------------
   static void altaPersona() {
       String nombre = ES.leeDeTeclado("Nombre: ");
       String apellido = ES.leeDeTeclado("Apellido: ");
       char sexo = ES.leecaracter("Sexo: ");
       String nif = ES.leeDeTeclado("NIF: ");
       String localidad = ES.leeDeTeclado("Localidad: ");
        listaPersonas[Persona.ctd]=new Persona(nombre, apellido, sexo, nif, localidad);
   }
   //----------------------------------------------------------------------------
   static void listaPersona(){
       System.out.println("\t------Listado de personas------");
		for (int i=0;i<Persona.ctd;i++){
			System.out.println((i+1) +".- "+ listaPersonas[i]);
                }
			System.out.println("\t-------------------------------\n"+
								"\t\tTotal: "+Persona.ctd+" personas");
   }
   //----------------------------------------------------------------------------
    static int pintaMenu(String[] opciones){
        int op;
    System.out.println("-----"+opciones[0]+"----\n" );
        
    for(int i=1; i<opciones.length;i++){
        System.out.println(i+".-\t "+opciones[i] );
    }    
    System.out.println(opciones.length+".-\tSalir");
    
    op=ES.leeN("Elige opcion? ");	
    while(op<0 || op>opciones.length){
        op=ES.leeN("Opción errónea, prueba otra vez: "); 
    } 
        return op;    
    }
   //----------------------------------------------------------------------------
    static int pintaMenu2(String[] opciones){
        int op;
    System.out.println("-----"+opciones[0]+"----\n" );
        
    for(int i=1; i<opciones.length;i++){
        System.out.println(i+".-\t "+opciones[i] );
    }    
    System.out.println(opciones.length+".-\tSalir");
    
    op=ES.leeN("Elige opcion? ");	
    while(op<0 || op>opciones.length){
        op=ES.leeN("Opción errónea, prueba otra vez: "); 
    } 
        return op;    
    }

   //----------------------------------------------------------------------------
    static int buscaPersona(String nif){
        int pos=-1;
        
        for (int i = 0; i < Persona.ctd && pos==-1; i++) 
                     if(listaPersonas[i].getNif().equals(nif))
                        pos= i; 
  
        return pos;
    }
} 
    