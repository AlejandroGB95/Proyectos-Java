/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package instituto22;

/**
 *
 * @author Abraham
 */
public class Instituto22 {

    static Curso[]         ListaCursos      = new Curso[10];
    static Alumno[]        ListaAlumnos     = new Alumno[10] ;
    static Profesor[]      ListaProfesores  = new Profesor[10] ;
    static int numAlu=4,numProf=1,numCursos=2;
    
    public static void main(String[] args) {
       String[] menuP ={"Menú Principal","Altas","Asignar Alumno a Curso",
                        "Añadir Profesor a Curso","Listados","Cambiar Alumno de Curso"};
       String[] menuAltas ={"Altas","Matricular Alumno",
                            "Alta Profesor","Alta de Curso"};
       String[] menuListados ={"Listados","Listado de Clase",
                               "Listado de Profesores",
                               "Listados general de Alumnos"};
       
       insertaEnArray(ListaAlumnos,new Alumno("Pepe", "Lopez Garcia", 'H', "11111111H"));
       insertaEnArray(ListaAlumnos,new Alumno("Ana", "Lara Perez", 'M', "44H"));
       insertaEnArray(ListaAlumnos,new Alumno("Luisa", "Lopez Gomez",'M', "23331H"));
       insertaEnArray(ListaAlumnos,new Alumno("Lolo", "Lopez Gomez",'H', "3323331H"));
       
       
      insertaEnArray(ListaProfesores,new Profesor("Profe Lolo", "Lopez Gomez",'H', "6623331H"));
      insertaEnArray(ListaProfesores,new Profesor("Profe Luisa", "Lara Perez",'H', "332377L"));
      
        insertaEnArray(ListaCursos, new Curso("2ºDAW", null, null, "z2-20"));
        insertaEnArray(ListaCursos, new Curso("1ºDAW", null, null, "z2-19"));
       
       Alumno[] listaA=new Alumno[10];
       listaA[0]=ListaAlumnos[1];listaA[1]=ListaAlumnos[2];
       listaA[2]=ListaAlumnos[3];
       ListaCursos[0].setListaClase(listaA);
       
       int opcionP,opcionA,opcionL;
		do{
                    opcionP=pintaMenu(menuP);
           
                    switch(opcionP){
			case 1: 
                            do{
                              opcionA=pintaMenu(menuAltas); 
                              switch(opcionA){
                                case 1: 
                                 
                                 ListaAlumnos[numAlu]=new Alumno(
                                         ES.leeDeTeclado("nie ?"),
                                         ES.leeDeTeclado("nombre ?"),
                                         ES.leeDeTeclado("nif ?"));
                                 numAlu++;
                                break;
                                case 2: 
                                System.out.println("Alta Profesor");
                                altaProfesor();
                                break;
                                case 3: 
                                System.out.println("Alta de Curso");
                                ListaCursos[numCursos]=altaCurso();
                                numCursos++;
                                break;
                              }
                              
                             }while(opcionA != menuAltas.length);
                             break;
			case 2: 
                            if (AsignaAlumno() == -1){
                                System.out.println("Ha ocurrido un error durante la Matriculación");
                                } else {
                                System.out.println("Matriculación hecha con éxito");
                                }
                               
			     break;
			case 3: 
                            System.out.println("Opcion no implementada");
                            break;
			case 4: 
                           do{
                              opcionL=pintaMenu(menuListados); 
                              switch(opcionL){
                                case 1: 
                                
                                    Curso curso=(Curso) seleccionaDeArray(ListaCursos);
                           System.out.println("Informacion del Curso: "+curso.getNombre());
                                    System.out.println(curso.ListadoLargo());
                                        
                                    
                                break;
                                case 2: 
                                       listaArray(ListaProfesores);
                                break;
                                case 3: 
                                        listaArray(ListaAlumnos);
                                break;
                              }
                              
                             }while(opcionL != menuListados.length);
                             break;
                             
                        case 5: System.out.println("Cambiando Alumno de Curso");
                                cambiaAlmCurso();
                        
					break;     
                                    
			case 6: System.out.println("Adios...");
					break;		
			default: System.out.println("Esa opcion no es correcta");		
		}
		}while(opcionP != menuP.length); 

    }//Fin main..................
//---------------------------------------------
   static int listaArray(Object[] lista){
     int size =   sizeArray(lista);
       System.out.println("Listado de-> "+ lista[0].getClass().getSimpleName());
       
    for (int i = 0; i < size; i++) {
             System.out.println((i+1)+".-"+lista[i]);
                                        
     } 
    return size;
   }
//--------Matricular alumno-----------------------------------------------------
    static void insertaEnArray(Comparable lista[],Comparable p){
              
        int size=sizeArray(lista);
        if(size == lista.length)
            System.out.println("El Array está lleno "
                    + "no se pueden insertar mas "+lista[0].getClass().getSimpleName());
        else{
            int actual=0;
            while(lista[actual]!=null && 
                  p.compareTo(lista[actual]) >0 ) {
                actual++;
            }
            if(lista[actual]==null)
                lista[actual]=p;
            else//desplazar todos los elemento desde actual a la derecha
                for (int i = size; i > actual; i--) {
                    lista[i]=lista[i-1];
                }
            lista[actual]=p;
        }    
        
    }
//--------------------------------------------------------------------
    static int sizeArray(Object[] arr){
        int i=0;
        while (arr[i] !=null && i<arr.length) 
            i++;
        return i;
    }
    
//--------Alta profesor---------------------------------------------------------
    static void altaProfesor(){
        
        String modulos=ES.leeDeTeclado("escribe el nombre de los módulos, separados por comas"
                + " que imparte el profesor");
        String asig[]= modulos.split(",");
        
        ListaProfesores[numProf]=new Profesor(ES.leeDeTeclado("Introduce departamento: "),
                                        asig,
                                        ES.leeDeTeclado("Introduce nombre: "),
                                        ES.leeDeTeclado("Introduce NIF: "));
                                 numProf++;
        
    }

//-------- Asignar profesor a Curso-----------------------------------------------
//--------Matricular alumno-----------------------------------------------------
    static int AsignaAlumno(){
        int i=-1;
       
            Persona al=(Persona)seleccionaDeArray(ListaAlumnos);
            Curso cur=(Curso)seleccionaDeArray(ListaCursos);
            
            if (al!=null && cur!=null){
               
               //poner en enombre del curso en el alumno......
               String curso = cur.getNombre();
                      ((Alumno)al).setCurso(curso);
               //meter el alumno en el array de alumnos del curso
               cur.añadeAlumno((Alumno)al);
               
               i = 1;
               
                System.out.println(al.getNombre()+" ha sido matriculado en "+cur.getNombre());
            }  
        return i;
    }
//--------Alta de grupos--------------------------------------------------------
    static Curso altaCurso(){
        
       Profesor tutor   =null; 
       Alumno   delegado=null;
       
       String nombre= ES.leeDeTeclado("Introduce nombre: ");
       String aula= ES.leeDeTeclado("Introduce el aula: ");
       Object obj=null;
       //tutor..................
       obj=seleccionaDeArray(ListaProfesores);//,"profesor");
       if(obj!=null)
           tutor=(Profesor)obj;
     
       //delegao..................
       obj=seleccionaDeArray(ListaAlumnos);//,"alumno");
        if(obj!=null)
           delegado=(Alumno)obj;
       
     return new Curso(nombre, tutor,delegado, aula);   
    }
    
//--------Cambiar alumno de Curso------------------------------------------------------
    static void cambiaAlmCurso(){
        Alumno alm=null;
        Curso curso2=null;
        //1 elegir el curso del alumno a cambiar......
        Curso curso1=(Curso) seleccionaDeArray(ListaCursos);
        if(curso1!=null){
            //2 elegir el alumno  de ese curso a cambiar......
              alm=(Alumno)seleccionaDeArray(curso1.getListaClase());
              if(alm!=null){
                  //1 elegir el curso destino del alumno......
                curso2=(Curso) seleccionaDeArray(ListaCursos);
                if(curso2!=null){
                    if(curso1==curso2)
                        System.out.println("No se puede cambiar "
                                + "un alumno al curso origen...!!");
                    else{ //realizar el cambia
                        quitaAlmCurso(curso1,alm);
                        curso2.añadeAlumno(alm);
                    }
                }else System.out.println("Curso de Destino no seleccionado"); 
              }else System.out.println("Alumno a cambiarno seleccionado");
           }else System.out.println("Curso de Origen no seleccionado");
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
 //-----------------------------------------------------
    static Object seleccionaDeArray(Object[] lista){
        int indice=-1,i=0;
        String nombreObj=lista[0].getClass().getSimpleName();
       do{
          System.out.println("Elige un "+nombreObj+" de la lista...");
          
        while(lista[i]!=null){
            System.out.println((i+1)+".-"+lista[i]);
        i++;
        }
        
        indice=ES.leeN("nº de "+nombreObj+" o 0 para salir? ");
       }while( (indice<=0 || indice >i) && indice!=0);
       
        if (indice>0)
            return lista[indice-1];
        return null;
    }
 //-------------------------------------------------------------
    static Object eliminaObjetoDeArray(Object[] lista,Object obj){
       
        return 1;
    }
 //----------------------------------------------------------------- 
    static int quitaAlmCurso(Curso c, Alumno a ){
        
        Alumno[] listaAlu2=new Alumno[30];
        int i=0,ctd=0;
        Alumno[] listaAlu1=c.getListaClase();
        
        while(listaAlu1[i]!=null){
           if(listaAlu1[i]==a) 
               i++;
           else{
              listaAlu2[ctd]=listaAlu1[i];
              ctd++; i++;
           }
               
        }
        c.setListaClase(listaAlu2);
        
       return 1; 
    }
    
}//class
