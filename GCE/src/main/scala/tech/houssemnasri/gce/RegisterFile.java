import java.util.Objects;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class RegisterFile {
    private final ObservableList<Integer> registerList = FXCollections.observableArrayList();

    public void setRegister(Register register, int value) {
        registerList.set(register.index(), value);
    }

    public int readRegister(Register register) {
        Objects.requireNonNull(register);
        return registerList.get(register.index());
    }

    public ObservableList<Integer> getRegisterList() {
        return registerList;
    }
}
