package tech.houssemnasri.gce;

public class Instruction {
    private final Data instruction;

    public Instruction(Data instruction) {
        this.instruction = instruction;
    }

    public String toMachineCode() {
        return "";
    }

    public String toAssembly() {
        return "";
    }

    public Data getInstruction() {
        return instruction;
    }
}
