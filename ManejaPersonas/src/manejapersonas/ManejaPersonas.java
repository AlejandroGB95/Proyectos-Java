/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package manejapersonas;

/**
 *
 * @author Usuario
 */
public class ManejaPersonas {

   static Persona listaPersonas[] = new Persona[10];
    
    
    public static void main(String[] args) {
        String[] menu ={"Menú Principal","Alta Persona","Listar","Buscar Nif","Busqueda General"};
        
        listaPersonas[0] = new Persona("Pepe","Garcia",'H',"33333333L");
        listaPersonas[1] = new Persona("Lola","Torres",'M',"98765432F");
        listaPersonas[2] = new Persona("Veronica","Perez",'M',"12345678O");
    
        
    
        
        int opc;
        do{
            opc=pintaMenu(menu);
            
            switch(opc){
                case 1:
                    altaPersona();
                    listaPersona();
                    break;
                
                case 2:
                    listaPersona();
                    break;
                
                case 3:
                    //Entrada...
                    String nif=ES.leeDeTeclado("Introduce un nif a buscar: ");
                    //Proceso...
                    int pos = buscaPersona(nif);
                    //Salida...
                    if(pos==-1){
                        System.out.println("No existe ninguna persona con ese nif");
                    } else {
                        System.out.println(listaPersonas[pos]);
                    }
                    break;
                
                case 4:
                    
                    int n = ES.leeN("Por que dato quieres buscar:\t1.Nombre\t2.Apellido\t3.Sexo\t4.NIF :\n");
                    switch (n){
                        case 1:
                            String nombre = ES.leeDeTeclado("Introduce el nombre a buscar: ");
                            buscaNombre(nombre);
                            break;
                        case 2:
                            String apellido = ES.leeDeTeclado("Introduce el apellido a buscar: ");
                            buscaApellido(apellido);
                            break;
                        case 3:
                            char sexo = ES.leecaracter("Introduce el sexo a buscar: ");
                            buscaSexo(sexo);
                            break;
                        case 4:
                            nif = ES.leeDeTeclado("Introduce el nif a buscar: ");
                            pos = buscaPersona(nif);
                            if (pos == -1) {
                                System.out.println("No existe ninguna persona con ese nif");
                            } else {
                                System.out.println(listaPersonas[pos]);
                            }
                            break;
                        default:
                            System.out.println("Opción no válida");
                            
                                 
                    }
                    break;
                
                case 5:
                    System.out.println("Fin de la aplicación....!!");
                    break;
                
                default:
                    System.out.println("opción incorrecta, elija otra!");
            }
            
        }while(opc != menu.length); 
        
        
    }
   //---------------------------------------------------------------------------
   static void buscaNombre(String nombre) {
        for (int i = 0; i < Persona.ctd ; i++) {
                if (listaPersonas[i].getNombre().equals(nombre)){
                    System.out.println(listaPersonas[i]);
                } 
            }
   }
   //---------------------------------------------------------------------------
   static void buscaApellido(String apellido) {
        for (int i = 0; i < Persona.ctd ; i++) {
                if (listaPersonas[i].getApellidos().equals(apellido)){
                    System.out.println(listaPersonas[i]);
                } 
            }
   }

 //---------------------------------------------------------------------------
   static void buscaSexo(char sexo) {
        for (int i = 0; i < Persona.ctd ; i++) {
                if (listaPersonas[i].getSexo()==(sexo)){
                    System.out.println(listaPersonas[i]);
                } 
            }
   }

   //---------------------------------------------------------------------------
   static void altaPersona() {
       String nombre = ES.leeDeTeclado("Nombre: ");
       String apellido = ES.leeDeTeclado("Apellido: ");
       char sexo = ES.leecaracter("Sexo: ");
       String nif = ES.leeDeTeclado("NIF: ");
        listaPersonas[Persona.ctd]=new Persona(nombre, apellido, sexo, nif);
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
   static int buscaPersona(String nif){
       int pos=-1;  
            
            for (int i = 0; i < Persona.ctd ; i++) {
                if (listaPersonas[i].getNif().equals(nif)){
                    return i;
                } 
            }
            
       return pos;
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
}

