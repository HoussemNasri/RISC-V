import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TabPane;
import javafx.scene.control.TableView;

import ui.DataDisplayMode;

public class MainView {
    @FXML
    private ComboBox<DataDisplayMode> dataDisplayModeCombobox;

    @FXML
    private TableView<Instruction> instructionsTableView;

    @FXML
    private TabPane sideTabpane;

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
