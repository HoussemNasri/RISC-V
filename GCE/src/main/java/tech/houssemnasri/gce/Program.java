package tech.houssemnasri.gce;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
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

    public static Program fromBinaryFile(File file) {
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

    public static Program fromAssemblyFile(File file) {
        try {
            List<String> assemblyInstructions = Files.readAllLines(Paths.get(file.getPath()));
            Assembler assembler = new Assembler();
            return assembler.assemble(assemblyInstructions);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void writeTo(File file) {
        try {
            Files.deleteIfExists(file.toPath());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        try (FileWriter fileWriter = new FileWriter(file)) {
            for (Instruction instruction : instructions) {
                fileWriter.write(String.format("%08X%n", instruction.getInstruction().getData()));
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
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
