/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package agenda;

import java.net.URL;
import java.util.Optional;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import model.Alumno;
import model.DateUtil;
import model.Person;

/**
 *
 * @author Daniel Pinzón
 */
public class AlumnosOverviewController implements Initializable {
    // con el make controller tras guardar en el scene builder puede generar los identificadores automáticamente
    @FXML
    private TableView<Alumno> alumnosTable;
    @FXML
    private TableColumn<Alumno, String> alumnoColumn;
    @FXML
    private TableColumn<Alumno, Integer> nieColumn;
    @FXML
    private Button nuevoAlumno;
    @FXML
    private Button editarAlumno;
    @FXML
    private Button borrarAlumno;
    
    private Agenda agenda;
    
    @FXML
    private Label alumno;
    @FXML
    private Label nie;
    @FXML
    private Label cp;
    @FXML
    private Label localidad;
    @FXML
    private Label grupo;
    @FXML
    private Label foto;

    public void setAgenda(Agenda agenda) {
        this.agenda = agenda;

        //Añade los datos de la observable list a la tabla
        alumnosTable.setItems(agenda.getListaDeAlumnos());
    }
    //al implementar en la clase el initializable, le asigna el situiente códico initialize que actúa como un start()
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // Inicializa el alumno de y el nie por columna.
        alumnoColumn.setCellValueFactory(cellData -> cellData.getValue().getAlumno());
        //nieColumn.setCellValueFactory(cellData -> cellData.getValue().getNiePropiedad());
        
        //nada mas cargar muestra los detalles de los alumnos vacíos, por eso null
        showAlumnoDetails(null);
        
        // Escucha la selección de cambios y muestra los detalles de los estudiantes cuando cambian.
        alumnosTable.getSelectionModel().selectedItemProperty().addListener(
                (observable, oldValue, newValue) -> showAlumnoDetails(newValue));

        borrarAlumno.setOnAction((ActionEvent event) -> {
            handleDeleteAlumno();
        });
        nuevoAlumno.setOnAction((ActionEvent event) -> {
            handleNewAlumno();
        });
        editarAlumno.setOnAction((ActionEvent event) -> {
            handleEditAlumno();
        });
        

    }

    //------------------------------------------------------------
    //mostrar los datos de los alumno que recibe por parámetro
    private void showAlumnoDetails(Alumno alm) {
        if (alm != null) {
            // Fill the labels with info from the person object.
            alumno.setText(alm.getAlumno().get());
            nie.setText(String.valueOf(alm.getNiePropiedad().get()));
            cp.setText(alm.getCp().get());
            localidad.setText(alm.getLocalidad().get());
            grupo.setText(alm.getGrupo().get());
            foto.setText(alm.getFoto().get());

        } else {
            // si el alumno es null borra el texto.
            alumno.setText("");
            nie.setText("");
            cp.setText("");
            localidad.setText("");
            grupo.setText("");
            foto.setText("");
        }
    }

    //------------------------------------------------------------
    
    @FXML
    private void handleDeleteAlumno() {
        int selectedIndex = alumnosTable.getSelectionModel().getSelectedIndex();
        if (selectedIndex >= 0) {
            String nombre = alumnosTable.getSelectionModel().getSelectedItem().getAlumno().get();
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.initOwner(agenda.getPrimaryStage());
            alert.setTitle("Borrando contacto");
            alert.setHeaderText(null);
            alert.setContentText("Se borrará a la siguiente persona: " + nombre
                    + "\n Pulsa Aceptar si está seguro.");

            Optional<ButtonType> opcion = alert.showAndWait();
            if (opcion.get() == ButtonType.OK) {
                alumnosTable.getItems().remove(selectedIndex);
            }

        } else {
            // Nothing selected.
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.initOwner(agenda.getPrimaryStage());
            alert.setTitle("No hay selección");
            alert.setHeaderText("No hay ninguna persona seleccionada");
            alert.setContentText("Por favor, selecciona a una persona de la tabla");

            alert.showAndWait();
        }
    }
    
    @FXML
private void handleEditAlumno() {
    Alumno selectedAlum = alumnosTable.getSelectionModel().getSelectedItem();
    if (selectedAlum != null) {
        boolean okClicked = agenda.showAlumEditDialog(selectedAlum);
        if (okClicked) {
            showAlumnoDetails(selectedAlum);
        }

    } else {
        // Nothing selected.
        Alert alert = new Alert(Alert.AlertType.WARNING);
        alert.initOwner(agenda.getPrimaryStage());
        alert.setTitle("Sin selección");
        alert.setHeaderText("No ha seleccionado a un alumno");
        alert.setContentText("Por favor, seleccione un alumno de la lista.");

        alert.showAndWait();
    }
}
    //muestra la nueva ventana con el showAlumEditDialog
    @FXML
    private void handleNewAlumno() {
    Alumno tempAlum = new Alumno();
    boolean okClicked = agenda.showAlumEditDialog(tempAlum);//el alumno temporal es null por el constructor vacío
    if (okClicked) {
        agenda.getListaDeAlumnos().add(tempAlum);
    }
}
}
