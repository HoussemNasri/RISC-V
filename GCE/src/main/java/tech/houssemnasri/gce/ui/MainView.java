package tech.houssemnasri.gce.ui;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;


import javafx.beans.property.SimpleStringProperty;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.control.*;

import javafx.scene.layout.AnchorPane;
import tech.houssemnasri.gce.Data;
import tech.houssemnasri.gce.Instruction;
import tech.houssemnasri.gce.Simulator;

public class MainView extends AnchorPane implements Initializable {

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
    private Simulator simulator;

    public MainView(Simulator simulator) {
        loadView();
        this.simulator = simulator;

        instructionsTableView.getSelectionModel().select(0);
        this.simulator.getMachine().PCProperty().addListener((observable, old, value) -> {
            instructionsTableView.getSelectionModel().select((int) (value.longValue() / 4));
        });
    }

    private void loadView() {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("MainView.fxml"));
            loader.setRoot(this);
            loader.setController(this);
            loader.load();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

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
        simulator.stepIn();
    }

    @FXML
    void runOrPauseSimulation(ActionEvent event) {

    }

    @FXML
    void runPreviousInstruction(ActionEvent event) {
        simulator.stepOut();
    }
}
