/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package agenda;

import java.net.URL;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Optional;
import java.util.ResourceBundle;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.css.CssMetaData;
import javafx.css.Styleable;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;
import javafx.scene.layout.Border;
import javafx.scene.layout.BorderStroke;
import javafx.scene.layout.BorderStrokeStyle;
import javafx.scene.layout.BorderWidths;
import javafx.scene.layout.CornerRadii;
import javafx.scene.text.Font;
import javafx.stage.Stage;
import model.DatosBd;

/**
 * FXML Controller class
 *
 * @author Usuario
 */
public class Login_ConexionController implements Initializable {

    DatosBd conexion;
    
    @FXML
    private TextField usuario;
    @FXML
    private TextField contraseña;
    @FXML
    private TextField nombreBD;
    @FXML
    private TextField servidorBD;
    @FXML
    private TextField puertoBD;
    @FXML
    private ComboBox<?> tipoBD;
    @FXML
    private Button BotCancelar;
    @FXML
    private Button BotConectar;
    private Stage dialogStage;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        ObservableList datosCombo = FXCollections.observableList(new ArrayList());
        datosCombo.addAll("MySQL", "Oracle");
        tipoBD.setItems(datosCombo);
        
        tipoBD.valueProperty().addListener((observable) -> {
            if (tipoBD.getSelectionModel().getSelectedItem()=="MySQL")
                puertoBD.setText("3306");
            else if (tipoBD.getSelectionModel().getSelectedItem()=="Oracle")
                puertoBD.setText("1521");
        });
    }

    @FXML
    private void clickCancelar(ActionEvent event) {
        Alert alerta = new Alert(Alert.AlertType.CONFIRMATION);
        alerta.setTitle("Saliendo de la aplicación");
        alerta.setContentText("¿Quieres cerrar la aplicación?");

        Optional<ButtonType> opcion = alerta.showAndWait();
        if (opcion.get() == ButtonType.OK) {
            dialogStage.close();
        }
    }

    @FXML
    private void clickConectar(ActionEvent event) {
        if (compruebaDatos()) {

            conexion = new DatosBd(String.valueOf(tipoBD.getSelectionModel().getSelectedItem()),
                    servidorBD.getText(),
                    puertoBD.getText(),
                    nombreBD.getText(),
                    usuario.getText(),
                    contraseña.getText());

            if (conexion.getConn() != null) {

                dialogStage.close();

                Alert alerta = new Alert(Alert.AlertType.INFORMATION);
                alerta.setTitle(null);
                alerta.setContentText("Conexión a la BD hecha con éxito");
                alerta.showAndWait();

            } else {

                Alert alerta = new Alert(Alert.AlertType.CONFIRMATION);
                alerta.setTitle(null);
                alerta.setContentText("¿Quieres volver a intentarlo?");
                Optional<ButtonType> opcion = alerta.showAndWait();
                if (opcion.get() != ButtonType.OK) {
                    System.exit(0);
                }

            }

        }
    }

    public void setDialogStage(Stage dialogStage) {
        this.dialogStage = dialogStage;
    }

    boolean compruebaDatos() {
        boolean datosValidos = true;
        Alert alerta = new Alert(Alert.AlertType.ERROR);
        alerta.setTitle("Error en los siguientes campos...");
        String mensaje = "";
        if (usuario.getText().trim().isEmpty()) {
            datosValidos = false;
            mensaje += "Falta el usuario\n";
        }

        if (contraseña.getText().trim().isEmpty()) {
            datosValidos = false;
            mensaje += "Falta la contraseña\n";
        }

        if (nombreBD.getText().trim().isEmpty()) {
            datosValidos = false;
            mensaje += "Falta el nombre de la BD\n";
        }

        if (servidorBD.getText().trim().isEmpty()) {
            datosValidos = false;
            mensaje += "Falta el servidor de la BD\n";
        }

        if (puertoBD.getText().trim().isEmpty()) {
            datosValidos = false;
            mensaje += "Falta el puerto\n";
        } else {
            try {
                Integer.parseInt(puertoBD.getText());
            } catch (NumberFormatException e) {
                datosValidos = false;
                mensaje += "El puerto debe ser un numero\n";
            }
        }

        if (tipoBD.getSelectionModel().getSelectedItem() != "MySQL" && tipoBD.getSelectionModel().getSelectedItem() != "Oracle") {
            datosValidos = false;
            mensaje += "Debes seleccionar un tipo de BD\n";
        }

        alerta.setContentText(mensaje);

        if (datosValidos == false) {
            alerta.showAndWait();
        }

        return datosValidos;
    }

    public DatosBd getDB() {
        return conexion;
    }

}
