/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package agenda;

import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.stage.Stage;
import model.Alumno;

/**
 * Dialog to edit details of a person.
 *
 * @author Marco Jakob
 */
public class AlumnoEditDialogController {

    private TextField alum;
    @FXML
    private TextField nie;
    @FXML
    private TextField localidad;
    @FXML
    private TextField grupo;
    @FXML
    private TextField cp;
    @FXML
    private TextField foto;
    //declara el escenario principal
    private Stage dialogStage;
    private Alumno alumno;
    private boolean okClicked = false;
    @FXML
    private Button ok;
    @FXML
    private Button cancel;
    @FXML
    private TextField alumnoNombre;
    
    /**
     * Sets the stage of this dialog.
     *
     * @param dialogStage
     */
    public void setDialogStage(Stage dialogStage) {
        this.dialogStage = dialogStage;
    }

    /**
     * Sets the alum to be edited in the dialog.
     *
     * @param alumno
     */
    public void setAlumno(Alumno alumno) {
        this.alumno = alumno;

        if (alumno.getAlumno()!= null) {
            alumnoNombre.setText(alumno.getAlumno().get());
            nie.setText(String.valueOf(alumno.getNiePropiedad()));
            localidad.setText(alumno.getLocalidad().get());
            grupo.setText(alumno.getGrupo().get());
            cp.setText(alumno.getCp().get());
            foto.setText(alumno.getFoto().get());
        }
    }

    /**
     * Returns true if the user clicked OK, false otherwise.
     *
     * @return
     */
    public boolean isOkClicked() {
        return okClicked;
    }

    /**
     * Called when the user clicks ok.
     */
    //método que se llama cuando el usuario clicka ok a cualquier inserción o modificación
    @FXML
    private void handleOk() {
        if (isInputValid()) {
            alumno.setAlumno(alumnoNombre.getText());
            alumno.setNiePropiedad(Integer.parseInt(nie.getText()));
            alumno.setLocalidad(localidad.getText());
            alumno.setGrupo(grupo.getText());
            alumno.setCp(cp.getText());
            alumno.setFoto(foto.getText());

            okClicked = true;
            dialogStage.close();
        }
    }

    /**
     * Called when the user clicks cancel.
     */
    @FXML
    private void handleCancel() {
        dialogStage.close();
    }

    /**
     * Validates the user input in the text fields.
     *
     * @return true if the input is valid
     */
    //valida los campos a ingresar
    private boolean isInputValid() {
        String errorMessage = "";

        if (alumnoNombre.getText() == null || alumnoNombre.getText().length() == 0) {
            errorMessage += "Nombre de alumno inválido\n";
        }
        if (nie.getText() == null || nie.getText().length() == 0) {
            errorMessage += "Nie inválido\n";
        }
        if (localidad.getText() == null || localidad.getText().length() == 0) {
            errorMessage += "Localidad inválida\n";
        }

        if (cp.getText() == null || cp.getText().length() == 0) {
            errorMessage += "Código postal inválido\n";
        } else {
            // try to parse the postal code into an int.
            try {
                Integer.parseInt(cp.getText());
            } catch (NumberFormatException e) {
                errorMessage += "Código postal inválido, debe introducir un número\n";
            }
        }

        if (grupo.getText() == null || grupo.getText().length() == 0) {
            errorMessage += "Nombre del grupo inválido\n";
        }

        if (foto.getText() == null || foto.getText().length() == 0) {
            errorMessage += "No es una foto válida\n";
        }

        if (errorMessage.length() == 0) {
            return true;
        } else {
            // Show the error message.
            Alert alert = new Alert(AlertType.ERROR);
            alert.initOwner(dialogStage);
            alert.setTitle("Campos inválidos o incompletos");
            alert.setHeaderText("Por favor, corriga los campos inválidos o incompletos");
            alert.setContentText(errorMessage);

            alert.showAndWait();

            return false;
        }
    }
}
