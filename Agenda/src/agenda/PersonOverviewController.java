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
import javafx.event.EventType;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javax.swing.JOptionPane;
import model.DateUtil;
import model.Person;

/**
 * FXML Controller class
 *
 * @author Usuario
 */
public class PersonOverviewController implements Initializable {

    @FXML
    private TableView<Person> personTable;
    @FXML
    private TableColumn<Person, String> firstNameColumn;
    @FXML
    private TableColumn<Person, String> lastNameColumn;

    @FXML
    private Label firstNameLabel;
    @FXML
    private Label lastNameLabel;
    @FXML
    private Label streetLabel;
    @FXML
    private Label postalCodeLabel;
    @FXML
    private Label cityLabel;
    @FXML
    private Label birthdayLabel;

    // Reference to the main application.
    private Agenda agenda;
    @FXML
    private Button borrar;
    @FXML
    protected Button nuevo;
    @FXML
    protected Button editar;

    /**
     * Initializes the controller class.
     */
    public void setAgenda(Agenda agenda) {
        this.agenda = agenda;

        // Add observable list data to the table
        personTable.setItems(agenda.getListaDePersonas());
    }

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // Initialize the person table with the two columns.
        firstNameColumn.setCellValueFactory(cellData -> cellData.getValue().firstNameProperty());
        lastNameColumn.setCellValueFactory(cellData -> cellData.getValue().lastNameProperty());

        // Clear person details.
        showPersonDetails(null);

        // Listen for selection changes and show the person details when changed.
        personTable.getSelectionModel().selectedItemProperty().addListener(
                (observable, oldValue, newValue) -> showPersonDetails(newValue));

                borrar.setOnAction((ActionEvent event) -> {
            handleDeletePerson();
        });
        
        /*borrar.addEventHandler(EventType.ROOT, (event) -> {
            handleDeletePerson();
        }); este evento es genérico, por cualquier tipo de evento que sufre el botón*/
        
    }

    //--------------------------------------------------------------------------
    private void showPersonDetails(Person person) {
        if (person != null) {
            // Fill the labels with info from the person object.
            firstNameLabel.setText(person.getFirstName());
            lastNameLabel.setText(person.getLastName());
            streetLabel.setText(person.getStreet());
            postalCodeLabel.setText(Integer.toString(person.getPostalCode()));
            cityLabel.setText(person.getCity());

            // TODO: We need a way to convert the birthday into a String! 
            birthdayLabel.setText(DateUtil.format(person.getBirthday()));
        } else {
            // Person is null, remove all the text.
            firstNameLabel.setText("");
            lastNameLabel.setText("");
            streetLabel.setText("");
            postalCodeLabel.setText("");
            cityLabel.setText("");
            birthdayLabel.setText("");
        }
    }

    //--------------------------------------------------------------------------
    /**
     * Called when the user clicks on the delete button.
     */
    @FXML
    private void handleDeletePerson() {
        int selectedIndex = personTable.getSelectionModel().getSelectedIndex();
        if (selectedIndex >= 0) {
            String nombre = personTable.getSelectionModel().getSelectedItem().getFirstName();
            Alert alert = new Alert(AlertType.CONFIRMATION);
            alert.initOwner(agenda.getPrimaryStage());
            alert.setTitle("Borrando contacto");
            alert.setHeaderText(null);
            alert.setContentText("Se borrará a la siguiente persona: " + nombre
                    + "\n Pulsa Aceptar si está seguro.");

            Optional<ButtonType> opcion = alert.showAndWait();
            if (opcion.get() == ButtonType.OK) {
                personTable.getItems().remove(selectedIndex);
            }

        } else {
            // Nothing selected.
            Alert alert = new Alert(AlertType.WARNING);
            alert.initOwner(agenda.getPrimaryStage());
            alert.setTitle("No hay selección");
            alert.setHeaderText("No hay ninguna persona seleccionada");
            alert.setContentText("Por favor, selecciona a una persona de la tabla");

            alert.showAndWait();

            //JOptionPane.showMessageDialog(null,"Borrar " ,"Borrado de contacto", JOptionPane.WARNING_MESSAGE); otra forma
        }
    }
  
    /**
 * Called when the user clicks the new button. Opens a dialog to edit
 * details for a new person.
 */
@FXML
private void handleNewPerson() {
    Person tempPerson = new Person();
    boolean okClicked = agenda.showPersonEditDialog(tempPerson);
    if (okClicked) {
        agenda.getListaDePersonas().add(tempPerson);
    }
}

/**
 * Called when the user clicks the edit button. Opens a dialog to edit
 * details for the selected person.
 */
@FXML
private void handleEditPerson() {
    Person selectedPerson = personTable.getSelectionModel().getSelectedItem();
    if (selectedPerson != null) {
        boolean okClicked = agenda.showPersonEditDialog(selectedPerson);
        if (okClicked) {
            showPersonDetails(selectedPerson);
        }

    } else {
        // Nothing selected.
        Alert alert = new Alert(AlertType.WARNING);
        alert.initOwner(agenda.getPrimaryStage());
        alert.setTitle("Sin selección");
        alert.setHeaderText("No ha seleccionado a un contacto");
        alert.setContentText("Por favor, seleccione un contacto de la agenda.");

        alert.showAndWait();
    }
}
}
