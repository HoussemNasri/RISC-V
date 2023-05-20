package tech.houssemnasri.gce.ui;

import javafx.beans.InvalidationListener;
import javafx.geometry.Insets;
import javafx.scene.control.Label;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.TextField;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import tech.houssemnasri.gce.Data;
import tech.houssemnasri.gce.Register;
import tech.houssemnasri.gce.RegisterFile;

public class RegistersViewer extends ScrollPane {
    private final RegisterFile registerFile;
    private final VBox root;

    public RegistersViewer(RegisterFile registerFile) {
        this.registerFile = registerFile;


        this.root = new VBox();
        root.setPadding(new Insets(24, 8, 24, 8));
        root.setSpacing(12);
        this.setContent(root);

        updateRegistersUI(registerFile);
        registerFile.getRegisterList().addListener((InvalidationListener) e -> {
            updateRegistersUI(registerFile);
        });
    }

    private void updateRegistersUI(RegisterFile registerFile) {
        root.getChildren().clear();
        for (int regIndex = 0; regIndex < RegisterFile.SIZE; regIndex++) {
            Register register = Register.byIndex(regIndex);
            int value = registerFile.readRegister(register);
            root.getChildren().add(createRegisterItem(register, Data.fromInt(value)));
        }
    }

    public HBox createRegisterItem(Register register, Data value) {
        HBox container = new HBox(8);
        Label registerNameLabel = new Label(String.format("%s (x%d)", register.name(), register.index()));
        registerNameLabel.setMinWidth(120);
        TextField registerValueTextField = new TextField(value.hex());
        registerValueTextField.setEditable(false);
        container.getChildren().addAll(registerNameLabel, registerValueTextField);
        return container;
    }
}
