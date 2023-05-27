package tech.houssemnasri.gce;

import java.math.BigInteger;
import java.util.*;
import java.util.stream.Collectors;

/**
 * Screw clean code
 */
public class RISCVAssembler {
    private final List<String> assemblyInstructions = new ArrayList<>();
    private String currentInstruction;
    private int index;

    public RISCVAssembler(List<String> instructions) {
        assemblyInstructions.addAll(instructions);
        System.out.println(Long.toBinaryString(parseLW(new String[]{"lw", "x1", "-8(x3)"})));
        System.out.println(Long.toHexString(parseLW(new String[]{"lw", "x1", "-8(x3)"})));
        System.out.println(Long.toHexString(parseRType(new String[]{"add", "x5", "x1", "x0"})));
        System.out.println(Long.toHexString(parseRType(new String[]{"add", "x1", "x1", "x1"})));
        System.out.println(Long.toHexString(parseRType(new String[]{"add", "x9", "x8", "x1"})));

        System.out.println(Long.toHexString(parseRType(new String[]{"sub", "x5", "x1", "x0"})));
        System.out.println(Long.toHexString(parseRType(new String[]{"and", "x1", "x1", "x1"})));
        System.out.println(Long.toHexString(parseRType(new String[]{"or", "x9", "x8", "x1"})));

        System.out.println(Long.toHexString(parseSW(new String[]{"SW", "x5", "2(x2)"})));
        System.out.println(Long.toBinaryString(parseSW(new String[]{"SW", "x5", "2(x2)"})));

        System.out.println(Long.toHexString(parseBType(new String[]{"beq", "x1", "x4", "-4"})));
        System.out.println(Long.toHexString(parseBType(new String[]{"bne", "x2", "x4", "-8"})));

    }

    public Program assemble() {
        List<Instruction> instructions = assemblyInstructions.stream()
                .map(this::parseInstruction).collect(Collectors.toList());
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
        assert tokens.length == 3;

        Register rs2 = parseRegister(tokens[1]);
        String[] offsetAndRS1 = tokens[2].replace(")", "").split("\\(");
        int offset = Integer.parseInt(offsetAndRS1[0]);
        Register rs1 = parseRegister(offsetAndRS1[1]);
        BitSet offsetBits = BitSet.valueOf(new long[]{offset});
        System.out.println("Debug: " + offsetBits);
        BigInteger result = BigInteger.ZERO;
        result = setBits(0b0100011, 0, 7, result);

        BitSet _0_to_4 = offsetBits.get(0, 5);
        result = setBits(_0_to_4.length() == 0 ? 0 : (int) _0_to_4.toLongArray()[0], 7, 5, result);

        result = setBits(0b010, 12, 3, result);
        result = setBits(rs1.index(), 15, 5, result);
        result = setBits(rs2.index(), 20, 5, result);

        BitSet _5_to_11 = offsetBits.get(5, 12);
        result = setBits(_5_to_11.length() == 0 ? 0 : (int) _5_to_11.toLongArray()[0], 25, 7, result);

        return result.longValue();
    }

    private long parseBType(String[] tokens) {
        assert tokens.length == 4;
        Register rs1 = parseRegister(tokens[1]);
        Register rs2 = parseRegister(tokens[2]);
        int branchOffset = Integer.parseInt(tokens[3]);

        BitSet branchOffsetBits = BitSet.valueOf(new long[]{branchOffset});
        BigInteger result = BigInteger.ZERO;
        result = setBits(0b1100011, 0, 7, result);
        result = setBits(branchOffsetBits.get(11) ? 1 : 0, 7, 1, result);

        BitSet _1_to_4 = branchOffsetBits.get(1, 5);
        result = setBits(_1_to_4.length() == 0 ? 0 : (int) _1_to_4.toLongArray()[0], 8, 4, result);

        result = setBits("beq".equals(tokens[0]) ? 0b000 : 0b001, 12, 3, result);

        result = setBits(rs1.index(), 15, 5, result);
        result = setBits(rs2.index(), 20, 5, result);

        BitSet _5_to_10 = branchOffsetBits.get(5, 11);
        result = setBits(_5_to_10.length() == 0 ? 0 : (int) _5_to_10.toLongArray()[0], 25, 6, result);

        result = setBits(branchOffsetBits.get(12) ? 1 : 0, 31, 1, result);

        return result.longValue();
    }

    private Long parseRType(String[] tokens) {
        assert tokens.length == 4;

        String op = tokens[0].toUpperCase();
        Register rd = parseRegister(tokens[1]);
        Register rs1 = parseRegister(tokens[2]);
        Register rs2 = parseRegister(tokens[3]);

        Map<String, Integer> rTypeToFunct3Mapper = new HashMap<>();
        rTypeToFunct3Mapper.put("ADD", 0x0);
        rTypeToFunct3Mapper.put("SUB", 0x0);
        rTypeToFunct3Mapper.put("AND", 0x7);
        rTypeToFunct3Mapper.put("OR", 0x6);
        rTypeToFunct3Mapper.put("SLT", 0x3);

        Map<String, Integer> rTypeToFunct7Mapper = new HashMap<>();
        rTypeToFunct7Mapper.put("ADD", 0x00);
        rTypeToFunct7Mapper.put("SUB", 0x20);
        rTypeToFunct7Mapper.put("AND", 0x00);
        rTypeToFunct7Mapper.put("OR", 0x00);
        rTypeToFunct7Mapper.put("SLT", 0x00);

        BigInteger result = BigInteger.ZERO;
        result = setBits(0b0110011, 0, 7, result);
        result = setBits(rd.index(), 7, 5, result);
        result = setBits(rTypeToFunct3Mapper.get(op), 12, 3, result);
        result = setBits(rs1.index(), 15, 5, result);
        result = setBits(rs2.index(), 20, 5, result);
        result = setBits(rTypeToFunct7Mapper.get(op), 25, 7, result);

        return result.longValue();
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
