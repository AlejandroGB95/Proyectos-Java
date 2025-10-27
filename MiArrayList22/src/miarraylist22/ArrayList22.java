/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package miarraylist22;


/**
 * 
 * @author Usuario
 */
public class ArrayList22 {
    
   Object[] datos;
   int ultimo=0;
   
    public ArrayList22(Object[] datos) {
        this.datos = datos;
        
        ultimo=datos.length;
    }
   
    public ArrayList22(){
       datos = new Object[10];
    }
   
    public ArrayList22(int n){
        datos = new Object[n];
    }

    boolean add(Object dato){
        if(ultimo == datos.length){
            Object[] auxiliar = new Object[ultimo+10];
            
            for (int i = 0; i < ultimo; i++) {
                auxiliar[i]=datos[i];
            }
             
            datos = auxiliar;
        }
        
        datos[ultimo]=dato;
        ultimo++;
        return true;
    }
    
    Object set(int i, Object obj){
        Object machacado = datos[i];
        datos[i]=obj;
        
        return machacado;
    }
    Object remove(int pos){
        if (pos!=ultimo){
         pos-=1;
         Object borrado=null;
        Object[] auxiliar=new Object[ultimo];
        int i=0, ctd=0;
         
        while(datos[i]!=null){
           if(i==pos){
               datos[i]=null;
               borrado=datos[i];
               i++;
           }else{
              auxiliar[ctd]=datos[i];
              ctd++; i++;
           }
               
        }
        ultimo-=1;        
       return borrado; 
        } else {
            System.out.println("Intentas borrar un número más alto de la cantidad de instancias creadas");
            return null;
        }
    }
    
    Object get(int i){
       return datos[i];  
    }

    void clear(){
        for (int i = 0; i < ultimo; i++) {
            datos[i]=null;
        }
        ultimo=0;
    }
    
    int size(){
        return ultimo;
    }
    
    @Override
    public String toString() {
        String descripcion="[";
        
        for (int i = 0; i < ultimo; i++) {
            descripcion+=datos[i] + ",";      
        }
        
        descripcion=descripcion.substring(0, descripcion.length()-1);
        descripcion+="]";
        
        return descripcion;
    }

}
