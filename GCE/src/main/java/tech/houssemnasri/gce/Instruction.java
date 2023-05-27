package tech.houssemnasri.gce;

public class Instruction {
    private final Data instruction;
    private final Data address;
    private final String assembly;

    public Instruction(Data instruction, Data address, String assembly) {
        this.instruction = instruction;
        this.address = address;
        this.assembly = assembly.trim();
    }

    public Instruction(Data instruction, Data address) {
        this(instruction, address, "-");
    }

    public String toMachineCode() {
        return instruction.hex();
    }

    public String toAssembly() {
        return assembly;
    }

    public Data getInstruction() {
        return instruction;
    }

    public Data getAddress() {
        return address;
    }

    @Override
    public String toString() {
        return instruction.hex();
    }
}
