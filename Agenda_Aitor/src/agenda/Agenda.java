/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package agenda;

import com.sun.media.sound.DLSModulator;
import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.application.Application;
import javafx.collections.FXCollections;
import javafx.collections.ListChangeListener;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.StackPane;
import javafx.stage.Modality;
import javafx.stage.Stage;
import javax.swing.JOptionPane;
import model.Alumno;
import model.DatosBd;
import model.Person;

/**
 *
 * @author Usuario
 */
//Esta será nuestra clase principal de la aplicación
public class Agenda extends Application {

    //declaramos el escenario (ventana principal), la ventana base rootLayout (miVentana)
    //y la conexión a la base de datos
    private Stage primaryStage;
    private BorderPane rootLayout;
    private DatosBd conexion;

    //declara una lista ObservableList que puede modificar una lista controlándolo con eventos
    private ObservableList<Alumno> listaDeAlumnos = FXCollections.observableArrayList(new ArrayList());

    //En este constructor se crea el objeto conexión y se carga en la observableList todo los alumnos
    //del método getAlumnos de DatosBd.java
    public Agenda() {

    }

    //devuelve los datos de de la lista de alumnos como una observableList para manejar en controlador
    public ObservableList<Alumno> getListaDeAlumnos() {
        return listaDeAlumnos;
    }

    
    //el metodo abstracto start es donde se inicia todo y recibe el escenario principal
    @Override
    public void start(Stage primaryStage) {

        this.primaryStage = primaryStage;
        this.primaryStage.setTitle("Agenda...");

        //Inicializa el la ventana base
        initRootLayout();
//Inicializa la ventana principal de alumnos
        showAlumnoOverview();

        conexion = muestraLogin();

        if (conexion!=null){
        
            listaDeAlumnos.addAll(conexion.getAlumnos());

            listaDeAlumnos.addListener(new ListChangeListener() {
                @Override
                public void onChanged(ListChangeListener.Change c) {
                    //lee el siguiente cambio
                    c.next();
                    //si se borra un alumno
                    if (c.wasRemoved()) {
                        List alumnosBorrados = c.getRemoved();
                        conexion.borraAlumnos(alumnosBorrados);
                    }//si se añadae un nuevo alumno
                    else if (c.wasAdded()) {
                        List alumnosInsertados = c.getAddedSubList();
                        conexion.insertarAlumnos(alumnosInsertados);
                        
                    }   
                }
            });
        } else {
            System.exit(0);
        }
    }

    /**
     * @param args the command line arguments
     */
    //ejecutador que hay que hacer siempre
    public static void main(String[] args) {
        launch(args);
    }

    //-------------------------------------------
    /**
     * Inicializa el rootLayout
     */
    public void initRootLayout() {
        try {
            // Load root layout from fxml file.
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(Agenda.class.getResource("RootLayout.fxml"));
            rootLayout = (BorderPane) loader.load();

            // Show the scene containing the root layout.
            Scene scene = new Scene(rootLayout);
            primaryStage.setScene(scene);
            primaryStage.show();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //-------------------------------------------
    public DatosBd muestraLogin() {
        try {
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(Agenda.class.getResource("Login_Conexion.fxml"));
            AnchorPane page = (AnchorPane) loader.load();

            // Create the dialog Stage.
            Stage dialogStage = new Stage();
            dialogStage.setTitle("Conectarse a la BD");
            dialogStage.initModality(Modality.WINDOW_MODAL);
            dialogStage.initOwner(primaryStage);
            Scene scene = new Scene(page);
            dialogStage.setScene(scene);

            // Set el alumno en el controlador.
            Login_ConexionController controller = loader.getController();
            controller.setDialogStage(dialogStage);

            // Show the dialog and wait until the user closes it
            dialogStage.showAndWait();

            return controller.getDB();

        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    //-------------------------------------------
    /**
     * Mostrar la ventana de alumnos dentro del rootlayout (mi ventana)
     */
    public void showAlumnoOverview() {
        try {
            // Load person overview.
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(Agenda.class.getResource("AlumnosOvervieww.fxml"));
            AnchorPane alumnoOverview = (AnchorPane) loader.load();

            // Set person overview into the center of root layout.
            rootLayout.setCenter(alumnoOverview);

            // Give the controller access to the main app.
            AlumnosOverviewController controller = loader.getController();
            controller.setAgenda(this);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //-------------------------------------------------------------------
    //get que te devuelve un escenario principal
    public Stage getPrimaryStage() {
        return primaryStage;
    }

    //-------------------------------------------------------------------
    //inicializa otra ventana al darle al botón new o edit
    public boolean showAlumEditDialog(Alumno alumno) {
        try {
            // Load the fxml file and create a new stage for the popup dialog.
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(Agenda.class.getResource("AlumnoEditDialog.fxml"));
            AnchorPane page = (AnchorPane) loader.load();

            // Create the dialog Stage.
            Stage dialogStage = new Stage();
            dialogStage.setTitle("Añadir o editar Alumno");
            dialogStage.initModality(Modality.WINDOW_MODAL);
            dialogStage.initOwner(primaryStage);
            Scene scene = new Scene(page);
            dialogStage.setScene(scene);

            // Set el alumno en el controlador.
            AlumnoEditDialogController controller = loader.getController();
            controller.setDialogStage(dialogStage);
            controller.setAlumno(alumno);

            // Show the dialog and wait until the user closes it
            dialogStage.showAndWait();

            return controller.isOkClicked();
        } catch (IOException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
}
