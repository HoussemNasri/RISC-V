public class Instruction {
    private final Integer instruction;

    public Instruction(Integer instruction) {
        this.instruction = instruction;
    }

    public String inHex() {
        return "";
    }

    public String inBinary() {
        return "";
    }

    public String inHumanReadableForm() {
        return "";
    }

    public Integer getInstruction() {
        return instruction;
    }
}
