package tech.houssemnasri.gce;

public class Instruction {
    private final Data instruction;
    private final Data address;

    public Instruction(Data instruction, Data address) {
        this.instruction = instruction;
        this.address = address;
    }

    public String toMachineCode() {
        return instruction.hex();
    }

    public String toAssembly() {
        return "lw x4, -2(x6)";
    }

    public Data getInstruction() {
        return instruction;
    }

    public Data getAddress() {
        return address;
    }
}
