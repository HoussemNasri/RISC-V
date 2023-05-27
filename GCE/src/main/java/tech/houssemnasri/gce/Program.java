package tech.houssemnasri.gce;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class Program {
    private final List<Instruction> instructions = new ArrayList<>();

    public Program(List<Instruction> instructions) {
        this.instructions.addAll(instructions);
    }

    public List<Instruction> getInstructions() {
        return instructions;
    }

    public static Program fromFile(File file) {
        List<Instruction> instrs = new ArrayList<>();

        int instructionAddress = 0;
        try (BufferedReader br = new BufferedReader(new FileReader(file));) {
            String line;
            while ((line = br.readLine()) != null && !line.isEmpty()) {
                Long instructionValue = Long.valueOf(line, 16);
                Instruction instruction = new Instruction(Data.fromLong(instructionValue), Data.fromInt(instructionAddress));
                instrs.add(instruction);
                instructionAddress += 4;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return new Program(instrs);
    }

    @Override
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        for (Instruction instruction : instructions) {
            stringBuilder.append(instruction).append("\n");
        }

        return stringBuilder.toString();
    }
}
