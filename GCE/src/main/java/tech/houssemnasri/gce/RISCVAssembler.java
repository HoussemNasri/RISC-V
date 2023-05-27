package tech.houssemnasri.gce;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class RISCVAssembler {
    private final List<String> assemblyInstructions = new ArrayList<>();
    private String currentInstruction;
    private int index;

    public RISCVAssembler(List<String> instructions) {
        assemblyInstructions.addAll(instructions);
        System.out.println(Long.toBinaryString(parseLW(new String[]{"lw", "x1", "-8(x3)"})));
        System.out.println(Long.toHexString(parseLW(new String[]{"lw", "x1", "-8(x3)"})));

    }

    public Program assemble() {
        List<Instruction> instructions =
                assemblyInstructions.stream().map(this::parseInstruction).collect(Collectors.toList());
        return new Program(instructions);
    }

    private Instruction parseInstruction(String instruction) {
        this.currentInstruction = instruction;
        String[] tokens = instruction.trim().split(",?\\s*");
        int tokenIndex = 0;
        return null;
    }

    private String withoutWhitespaces(String s) {
        return s.replace("\\s", "");
    }

    private long parseLW(String[] tokens) {
        assert tokens.length == 3;
        Register rd = parseRegister(tokens[1]);
        String[] offsetAndRS1 = tokens[2].replace(")", "").split("\\(");
        int offset = Integer.parseInt(offsetAndRS1[0]);
        Register rs1 = parseRegister(offsetAndRS1[1]);

        BigInteger result = BigInteger.ZERO;
        result = setBits(0b0000011, 0, 7, result);
        result = setBits(rd.index(), 7, 5, result);
        result = setBits(0b010, 12, 3, result);
        result = setBits(rs1.index(), 15, 5, result);
        result = setBits(offset, 20, 12, result);

        return result.longValue();
    }

    private Long parseSW(String[] tokens) {
        return null;
    }

    private Long parseRType(String[] tokens) {
        return null;
    }

    private Register parseRegister(String regToken) {
        return Register.parse(regToken);
    }

    private BigInteger setBits(int bits, int from, int bitsSize, BigInteger destination) {
        for (int i = 0; i < bitsSize; i++) {
            if ((bits & (1 << i)) > 0) {
                destination = destination.setBit(from + i);
            }
        }
        return destination;
    }

}
