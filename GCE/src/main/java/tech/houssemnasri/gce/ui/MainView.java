package tech.houssemnasri.gce.ui;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;


import javafx.beans.property.ObjectProperty;
import javafx.beans.property.SimpleObjectProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.event.ActionEvent;
import javafx.event.Event;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.control.*;

import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.stage.FileChooser;
import javafx.stage.Stage;
import tech.houssemnasri.gce.GHDLInteractor;
import tech.houssemnasri.gce.Instruction;
import tech.houssemnasri.gce.Program;
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
    @FXML
    private Button nextButton;
    @FXML
    private Button previousButton;
    @FXML
    private Button runPauseButton;
    private Simulator simulator;
    private final Stage stage;
    private final FileChooser fileChooser = new FileChooser();
    private final ObjectProperty<Program> programObjectProperty = new SimpleObjectProperty<>();

    public MainView(Simulator simulator, Stage stage) {
        loadView();
        this.simulator = simulator;
        this.stage = stage;
        instructionsTableView.setEditable(true);

        instructionsTableView.getSelectionModel().select(0);
        this.simulator.getMachine().PCProperty().addListener((observable, old, value) -> {
            if (value.intValue() / 4 >= instructionsTableView.getItems().size()) {
                previousButton.setDisable(true);
                nextButton.setDisable(true);
                runPauseButton.setDisable(true);
                instructionsTableView.getSelectionModel().clearSelection();

                Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.setTitle("Program Simulation Finished");
                alert.setHeaderText("Program simulation finished. Click reset to start over");
                alert.show();
            } else {
                instructionsTableView.getSelectionModel().select((int) (value.longValue() / 4));
            }
        });

        initializeSidePane();
        initializeInstructionsTableView();
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

    }

    private void initializeSidePane() {
        Tab registersTab = new Tab("Registers");
        Tab memoryTab = new Tab("Memory");

        registersTab.setContent(new RegistersViewer(simulator.getMachine().getRegisterFile()));
        memoryTab.setContent(new MemoryViewer(simulator.getMachine().getDataMemory()));

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

        instructionsTableView.addEventFilter(MouseEvent.MOUSE_PRESSED, Event::consume);

        programObjectProperty.addListener((obs, old, program) -> {
            if (program != null) {
                instructionsTableView.getItems().setAll(program.getInstructions());
                instructionsTableView.getSelectionModel().select(0);
            }
        });
    }


    @FXML
    void loadProgram(ActionEvent event) {
        fileChooser.getExtensionFilters().add(
                new FileChooser.ExtensionFilter("risc-v assembly", "*.ras")
        );
        File chosenFile = fileChooser.showOpenDialog(stage);
        if (chosenFile != null) {
            Program program = Program.fromAssemblyFile(chosenFile);
            program.writeTo(GHDLInteractor.SIMULATION_WORK_DIRECTORY.resolve("program.txt").toFile());
            simulator.restart();
            resetSimulation();
            programObjectProperty.set(program);
        }
    }

    @FXML
    void runNextInstruction(ActionEvent event) {
        simulator.stepIn();
    }

    @FXML
    void runOrPauseSimulation() {

    }

    @FXML
    void runPreviousInstruction(ActionEvent event) {
        simulator.stepOut();
    }

    @FXML
    void resetSimulation() {
        previousButton.setDisable(false);
        nextButton.setDisable(false);
        runPauseButton.setDisable(false);
        simulator.reset();
    }
}
