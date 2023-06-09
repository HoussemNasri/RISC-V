package tech.houssemnasri.gce;

import java.util.*;
import java.util.stream.Collectors;

import scala.collection.JavaConverters;
import scala.math.BigInt;
import scala.math.Ordering;
import treadle.vcd.Change;
import treadle.vcd.VCD;

public class Simulator {
    private static final String REGISTER_MEMORY_FULLNAME = "uut.dp.reg.registers[1023:0]";
    private static final String DATA_MEMORY_FULLNAME = "uut.dp.data_memory.words[8192:0]";
    public static final String PC_FULLNAME = "uut.pc[31:0]";
    private static final int CLOCK_CYCLE_PERIOD = 20_000_000; // fs or 20 ns
    private final MachineState machine;
    private Program program;
    // Element 0 refer to the initial values before any cycles
    private final List<Set<Change>> valuesAtCycle = new ArrayList<>();
    private long cyclesCount;
    private int cycle;

    private final GHDLInteractor ghdlInteractor;

    public Simulator(GHDLInteractor ghdlInteractor) {
        this.machine = new MachineState();
        this.ghdlInteractor = ghdlInteractor;

        System.out.println(cyclesCount);
    }

    public void stepIn() {
        System.out.println("PC: " + machine.getPC());
        if (cycle + 1 > cyclesCount) {
            System.out.println("Program finished!");
        } else {
            cycle++;
            updateMachineState();
            System.out.println("Stepping In: ");
            System.out.println("Cycle: " + cycle);
            System.out.println("PC: " + machine.getPC());
            System.out.println("-------------------");

        }
    }

    public void stepOut() {
        if (cycle - 1 < 0) {
            System.out.println("Program cannot go back!");
        } else {
            cycle--;
            updateMachineState();
            System.out.println("Stepping Out: ");
            System.out.println("Cycle: " + cycle);
            System.out.println("PC: " + machine.getPC());
            System.out.println("-------------------");
        }
    }

    private void updateMachineState() {
        for (Change change : valuesAtCycle.get(cycle)) {
            String changedWireFullname = change.wire().fullName();
            if (REGISTER_MEMORY_FULLNAME.equals(changedWireFullname)) {
                List<Integer> registerValues = new ArrayList<>();
                BigInt regValue = change.value();
                for (int bit = 0; bit < 1024; bit += 32) {
                    int currentRegisterValue = 0;
                    for (int i = bit; i < bit + 32; i++) {
                        int bitPos = i - bit;
                        if (regValue.testBit(i)) {
                            currentRegisterValue += 1 << bitPos;
                        }
                    }
                    registerValues.add(currentRegisterValue);
                }
                machine.getRegisterFile().update(registerValues);
            } else if (DATA_MEMORY_FULLNAME.equals(changedWireFullname)) {
                List<Integer> words = new ArrayList<>();
                BigInt dataMemoryValue = change.value();
                for (int bit = 0; bit < DataMemory.WORDS * 32; bit += 32) {
                    int currentWordValue = 0;
                    for (int i = bit; i < bit + 32; i++) {
                        int bitPos = i - bit;
                        if (dataMemoryValue.testBit(i)) {
                            currentWordValue += 1 << bitPos;
                        }
                    }
                    words.add(currentWordValue);
                }
                machine.getDataMemory().update(words);
            } else if (PC_FULLNAME.equals(changedWireFullname)) {
                machine.setPC(change.value().longValue());
            }
        }
    }

    public void reset() {
        cycle = 0;
        updateMachineState();
    }

    public void restart() {
        this.program = Program.fromBinaryFile(GHDLInteractor.SIMULATION_WORK_DIRECTORY.resolve("program.txt").toFile());
        VCD vcd = ghdlInteractor.run(program);

        long maxRecordedTime = (long) vcd.valuesAtTime()
                .keys().map(o -> (Long) o).max((Ordering<Long>) Long::compare);

        cyclesCount = maxRecordedTime / CLOCK_CYCLE_PERIOD;
        valuesAtCycle.clear();
        valuesAtCycle.add(JavaConverters.asJava(vcd.initialValues()));
        Set<Change> prevChangeSet = valuesAtCycle.get(0);
        for (int cycle = 0; cycle < cyclesCount; cycle++) {
            Set<Change> changesSet =
                    new HashSet<>(JavaConverters.setAsJavaSet(vcd.valuesAtTime().getOrElse((cycle + 1) * CLOCK_CYCLE_PERIOD, scala.collection.mutable.HashSet::new)));
            prevChangeSet = prevChangeSet.stream().filter(change ->
                    changesSet.stream().noneMatch(change2 -> change2.wire().fullName().equals(change.wire().fullName()))
            ).collect(Collectors.toSet());

            changesSet.addAll(prevChangeSet);

            valuesAtCycle.add(changesSet);
            prevChangeSet = changesSet;
        }
        reset();
    }

    public MachineState getMachine() {
        return machine;
    }

    public Program getProgram() {
        return program;
    }
}
