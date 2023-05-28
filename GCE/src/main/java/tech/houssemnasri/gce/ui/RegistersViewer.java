package tech.houssemnasri.gce.ui;

import javafx.beans.InvalidationListener;
import javafx.beans.property.ObjectProperty;
import javafx.beans.property.SimpleObjectProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.Label;
import javafx.scene.control.ListCell;
import javafx.scene.control.ListView;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.HBox;
import javafx.util.Callback;
import tech.houssemnasri.gce.Data;
import tech.houssemnasri.gce.Register;
import tech.houssemnasri.gce.RegisterFile;

public class RegistersViewer extends AnchorPane implements Callback<ListView<RegistersViewer.RegisterItemModel>, ListCell<RegistersViewer.RegisterItemModel>> {
    private final RegisterFile registerFile;
    private final ListView<RegisterItemModel> listView;
    private final ObjectProperty<DataDisplayMode> dataDisplayMode = new SimpleObjectProperty<>(DataDisplayMode.HEX);

    public RegistersViewer(RegisterFile registerFile) {
        this.registerFile = registerFile;
        this.listView = new ListView<>();
        listView.setCellFactory(this);

        AnchorPane.setLeftAnchor(listView, 0d);
        AnchorPane.setRightAnchor(listView, 0d);
        AnchorPane.setTopAnchor(listView, 0d);
        AnchorPane.setBottomAnchor(listView, 0d);

        getChildren().setAll(listView);

        updateRegisters();
        registerFile.getRegisterList().addListener((InvalidationListener) e -> updateRegisters());
    }

    private void updateRegisters() {
        listView.getItems().clear();
        ObservableList<RegisterItemModel> registerItems = FXCollections.observableArrayList();
        for (int i = 0; i < RegisterFile.SIZE; i++) {
            RegisterItemModel registerItemModel = new RegisterItemModel();
            registerItemModel.register = Register.byIndex(i);
            registerItemModel.value = Data.fromInt(registerFile.readRegister(registerItemModel.register));
            registerItems.add(registerItemModel);
        }
        listView.getItems().setAll(registerItems);
    }

    @Override
    public ListCell<RegisterItemModel> call(ListView<RegisterItemModel> param) {
        return new ListCell<RegisterItemModel>() {
            @Override
            protected void updateItem(RegisterItemModel item, boolean empty) {
                super.updateItem(item, empty);
                if (!empty && item != null) {
                    // Workaround to use a custom layout for the cell
                    setText("");
                    setGraphicTextGap(0);

                    Label label = new Label(String.format("%s (x%d)", item.register.name(), item.register.index()));
                    label.setMinWidth(120);
                    TextField textfield = new TextField();
                    if (dataDisplayMode.get().equals(DataDisplayMode.BINARY)) {
                        textfield.setText(item.value.binary());
                    } else if (dataDisplayMode.get().equals(DataDisplayMode.DECIMAL)) {
                        textfield.setText(item.value.decimal());
                    } else {
                        textfield.setText(item.value.hex());
                    }
                    dataDisplayMode.addListener((obs, old, displayMode) -> {
                        if (displayMode.equals(DataDisplayMode.BINARY)) {
                            textfield.setText(item.value.binary());
                        } else if (displayMode.equals(DataDisplayMode.DECIMAL)) {
                            textfield.setText(item.value.decimal());
                        } else {
                            textfield.setText(item.value.hex());
                        }
                    });

                    textfield.setEditable(false);
                    HBox hbox = new HBox(12, label, textfield);
                    setGraphic(hbox);
                }
            }
        };
    }

    public ObjectProperty<DataDisplayMode> dataDisplayModeProperty() {
        return dataDisplayMode;
    }

    static class RegisterItemModel {
        private Register register;
        private Data value;
    }
}
