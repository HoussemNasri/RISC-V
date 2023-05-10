import javafx.beans.property.LongProperty;
import javafx.beans.property.SimpleLongProperty;

public class MachineState {
    private final LongProperty PC = new SimpleLongProperty(0);
    private final RegisterFile registerFile;
    private final DataMemory dataMemory;

    public MachineState() {
        registerFile = new RegisterFile();
        dataMemory = new DataMemory();
    }

    public DataMemory getDataMemory() {
        return dataMemory;
    }

    public RegisterFile getRegisterFile() {
        return registerFile;
    }

    public LongProperty PCProperty() {
        return PC;
    }

    public void setPC(Long PC) {
        PCProperty().setValue(PC);
    }
}
