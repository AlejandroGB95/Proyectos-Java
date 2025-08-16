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
public class Persona2 {
    
    private String nombre;
    private String apellido1;
    private String apellido2;
    private String nif;
    private int edad;
    private String localidad;
       
    
//---------------------Constructores--------------------------------------------

    public Persona2(String nombre) {
        this.nombre = nombre;
    }

    public Persona2(String nombre, String nif) {
        this(nombre);
        this.nif = nif;
    }

    public Persona2(String nombre, String apellido1, String apellido2, String nif) {
        this(nombre, nif);
        this.apellido1 = apellido1;
        this.apellido2 = apellido2;
        
    }
    
//----------------------Getter & Setter-----------------------------------------
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public String getNif() {
        return nif;
    }

    public void setNif(String nif) {
        this.nif = nif;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getLocalidad() {
        return localidad;
    }

    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }
    
//---------------------toString-------------------------------------------------
   
    @Override
    public String toString() {
        return "Persona{" + "nombre=" + nombre + 
                        ", apellido1=" + apellido1 + 
                        ", apellido2=" + apellido2 + 
                        ", nif=" + nif + 
                        ", edad=" + edad + 
                        ", localidad=" + localidad + '}';
    }
    
//----------------------equals && hashCode--------------------------------------

    
//----------Métodos-------------------------------------------------------------    
//----------Comprueba NIF-------------------------------------------------------
    
    public static String compruebaNif(String nuevoNif){
		char sigueProbando='N';
          do{
		if(nuevoNif.matches("[0-9]{8}((\\s[A-Z])|([A-Z])|(\\-[A-Z]))?")){
			//comprobar la letra....
			char letra=convierteNumeros(nuevoNif.substring(0,8));
		if(nuevoNif.length()>8){
			if(!(letra == nuevoNif.charAt(nuevoNif.length()-1))){
				System.out.print("Letra incorrecta, la correcta es -> "+ letra);
				return nuevoNif.replace(nuevoNif.charAt(nuevoNif.length()-1),letra);
			}else{
				return nuevoNif;	
			} 
		}
		else return nuevoNif+letra;
		
		}
                sigueProbando=ES.leecaracter("NiF no Válido, reintentar?(Si ->'S')");
                if(Character.toUpperCase(sigueProbando)=='S')
                    nuevoNif=ES.leeDeTeclado("Escribe le nif? ");
                
	 }while(Character.toUpperCase(sigueProbando)=='S');
          return "noValido";
	}

//---------Comprueba letras-----------------------------------------------------    
    
    public static char convierteNumeros(String respuesta){
		
		String secuenciaLetrasNIF = "TRWAGMYFPDXBNJZSQVHLCKE"; 
		int nifEntero = Integer.parseInt(respuesta);
		int indice =nifEntero%23;
		
		char letra = secuenciaLetrasNIF.charAt(indice);
		
		return letra;
	}

    
}
