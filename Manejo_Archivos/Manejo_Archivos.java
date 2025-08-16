import java.io.File;
import java.io.IOException;

class Manejo_Archivos {

    public ManejoArchivos() {
        // Constructor vacío
    }

    public static void main(String[] args) {
        // Carpeta base donde trabajaremos
        final File carpeta = new File("C:\\Ejemplos_Java");

        // Asegurarnos de que exista
        if (!carpeta.exists()) {
            if (carpeta.mkdirs()) {
                System.out.println("Carpeta base creada: " + carpeta.getAbsolutePath());
            } else {
                System.out.println("No se pudo crear la carpeta base. Verifica permisos.");
                return;
            }
        }

        // Listar antes de cambios
        listarFicherosPorCarpeta(carpeta);

        // Eliminar algunos archivos
        eliminarFile(new File(carpeta, "fichero2.txt"));
        eliminarFile(new File(carpeta, "fichero4.txt"));

        // Crear archivos nuevos
        crearArchivo(new File(carpeta, "nuevofichero1.txt"));
        crearArchivo(new File(carpeta, "nuevofichero2.txt"));

        // Crear carpeta dentro de la carpeta base
        crearDirectorio(new File(carpeta, "nueva_carpeta"));

        // Listar después de cambios
        listarFicherosPorCarpeta(carpeta);
    }

    static void listarFicherosPorCarpeta(File carpeta) {
        if (carpeta.isDirectory()) {
            File[] ficheros = carpeta.listFiles();
            if (ficheros != null) {
                for (File fichero : ficheros) {
                    System.out.println(fichero.getName());
                }
            } else {
                System.out.println("No se pudieron obtener los ficheros. Verifica permisos.");
            }
        } else {
            System.out.println("La ruta especificada no es una carpeta: " + carpeta.getAbsolutePath());
        }
    }

    static void eliminarFile(File fichero) {
        if (fichero.exists()) {
            if (fichero.delete()) {
                System.out.println("Fichero eliminado: " + fichero.getName());
            } else {
                System.out.println("No se pudo eliminar el fichero: " + fichero.getName());
            }
        } else {
            System.out.println("El fichero no existe: " + fichero.getName());
        }
    }

    static void crearArchivo(File fichero) {
        try {
            if (!fichero.getParentFile().exists()) {
                fichero.getParentFile().mkdirs();
            }
            if (fichero.createNewFile()) {
                System.out.println("Fichero creado: " + fichero.getName());
            } else {
                System.out.println("El fichero ya existe: " + fichero.getName());
            }
        } catch (IOException e) {
            System.out.println("Error al crear el fichero: " + e.getMessage());
        }
    }

    static void crearDirectorio(File directorio) {
        if (directorio.mkdirs()) {
            System.out.println("Directorio creado: " + directorio.getName());
        } else {
            System.out.println("El directorio ya existe o no se pudo crear: " + directorio.getName());
        }
    }
}
