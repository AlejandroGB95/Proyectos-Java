/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package probandoset;

/**
 *
 * @author Abraham
 *
 */
public class Alumno implements Comparable<Alumno> {

    protected String nombre;
    protected double nota;
//constructor

    public Alumno(String n, double nt) {
        nombre = n;
        nota = nt;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Alumno) {
            Alumno a = (Alumno) obj;
            return a.nombre.equals(nombre) && a.nota == nota;
        } else {
            return false;
        }
    }

    public int hashCode() {
        return nombre.hashCode() + (int) nota * 10000;
    }

    public String toString() {
        return nombre + "-" + nota;
    }

    @Override
    public int compareTo(Alumno o) {
        int comparacion = nombre.compareToIgnoreCase(o.nombre);
        if (comparacion == 0) {
            return (int) (nota - o.nota);
        } else {
            return comparacion;
        }
    }
}
