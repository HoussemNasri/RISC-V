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
                Integer instructionValue = Integer.valueOf(line, 16);
                Instruction instruction = new Instruction(Data.fromInt(instructionValue), Data.fromInt(instructionAddress));
                instrs.add(instruction);
                instructionAddress += 4;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return new Program(instrs);
    }
}
