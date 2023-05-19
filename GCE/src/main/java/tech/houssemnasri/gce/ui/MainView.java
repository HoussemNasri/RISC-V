package tech.houssemnasri.gce.ui;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.beans.property.SimpleStringProperty;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;

import tech.houssemnasri.gce.Data;
import tech.houssemnasri.gce.Instruction;

public class MainView implements Initializable {

    public static final String ADDRESS_COLUMN = "Address";
    public static final String MACHINE_CODE_COLUMN = "Machine code";
    public static final String ASSEMBLY_CODE_COLUMN = "Assembly code";

    @FXML
    private ComboBox<DataDisplayMode> dataDisplayModeCombobox;
    @FXML
    private TableView<Instruction> instructionsTableView;
    @FXML
    private TabPane sidePane;
    private RegistersViewer registersViewer;
    private MemoryViewer memoryViewer;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        initializeInstructionsTableView();
        initializeSidePane();
    }

    private void initializeSidePane() {
        Tab registersTab = new Tab("Registers", new Label("Show all planes available"));
        Tab memoryTab = new Tab("Memory", new Label("Show all cars available"));

        sidePane.getTabs().addAll(registersTab, memoryTab);
    }

    private void initializeInstructionsTableView() {
        TableColumn<Instruction, String> instructionAddressColumn = new TableColumn<>(ADDRESS_COLUMN);
        TableColumn<Instruction, String> instructionMachineCodeColumn = new TableColumn<>(MACHINE_CODE_COLUMN);
        TableColumn<Instruction, String> instructionAssemblyColumn = new TableColumn<>(ASSEMBLY_CODE_COLUMN);

        instructionAddressColumn.setCellValueFactory((cell) ->
                new SimpleStringProperty(cell.getValue().getAddress().hex()));
        instructionMachineCodeColumn.setCellValueFactory((cell) ->
                new SimpleStringProperty(cell.getValue().toMachineCode()));
        instructionAssemblyColumn.setCellValueFactory((cell) ->
                new SimpleStringProperty(cell.getValue().toAssembly()));

        instructionsTableView.getColumns()
                .addAll(instructionAddressColumn, instructionMachineCodeColumn, instructionAssemblyColumn);

        instructionsTableView.getItems().addAll(
                new Instruction(Data.fromInt(4485565), Data.fromInt(5541665)),
                new Instruction(Data.fromInt(4485565), Data.fromInt(5541665)),
                new Instruction(Data.fromInt(4485565), Data.fromInt(5541665))
        );
    }


    @FXML
    void loadProgram(ActionEvent event) {

    }

    @FXML
    void runNextInstruction(ActionEvent event) {

    }

    @FXML
    void runOrPauseSimulation(ActionEvent event) {

    }

    @FXML
    void runPreviousInstruction(ActionEvent event) {

    }
}
