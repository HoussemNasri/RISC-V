package tech.houssemnasri.gce;

import java.util.List;
import java.util.Objects;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class RegisterFile {
    public static final int SIZE = 32;
    private final ObservableList<Integer> registerList = FXCollections.observableArrayList();

    public RegisterFile() {
        for (int i = 0; i < 32; i++) {
            registerList.add(0);
        }
    }

    public void setRegister(Register register, int value) {
        registerList.set(register.index(), value);
    }

    public void update(List<Integer> updatedRegisters) {
        assert updatedRegisters != null && updatedRegisters.size() == 32;
        System.out.println("Asserted");
        registerList.setAll(updatedRegisters);
    }

    public int readRegister(Register register) {
        Objects.requireNonNull(register);
        return registerList.get(register.index());
    }

    public ObservableList<Integer> getRegisterList() {
        return registerList;
    }

    @Override
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("RISC-V 32 registers").append("\n");
        stringBuilder.append("-----------------------").append("\n");

        for (int regIndex = 0; regIndex < 32; regIndex++) {
            stringBuilder.append(String.format("[%s (x%d)]: %d", Register.byIndex(regIndex), regIndex, registerList.get(regIndex))).append("\n");
        }

        return stringBuilder.toString();
    }
}
