import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import scala.collection.JavaConverters;
import scala.math.BigInt;
import scala.math.Ordering;
import treadle.vcd.Change;
import treadle.vcd.VCD;

public class Simulator {
    public static final String REGISTER_MEMORY_FULLNAME = "uut.reg.registers[1023:0]";
    private static final int CLOCK_CYCLE_PERIOD = 20_000_000; // fs or 20 ns
    private final MachineState machine;
    private Program program;
    // Element 0 refer to the initial values before any cycles
    private final List<Set<Change>> valuesAtCycle = new ArrayList<>();
    private final long cyclesCount;
    private int cycle = 1;

    public Simulator(Program program, GHDLInteractor ghdlInteractor) {
        this.program = program;
        this.machine = new MachineState();

        VCD vcd = ghdlInteractor.run(program);

        long maxRecordedTime = (long) vcd.valuesAtTime().keys().map(o -> (Long) o).max(new Ordering<Long>() {
            @Override
            public int compare(java.lang.Long x, java.lang.Long y) {
                return Long.compare(x, y);
            }
        });

        cyclesCount = maxRecordedTime / CLOCK_CYCLE_PERIOD;
        valuesAtCycle.add(JavaConverters.asJava(vcd.initialValues()));
        for (int cycle = 0; cycle < cyclesCount; cycle++) {
            scala.collection.mutable.HashSet<Change> scalaChangesSet = vcd.valuesAtTime().getOrElse((cycle + 1) * CLOCK_CYCLE_PERIOD, scala.collection.mutable.HashSet::new);
            valuesAtCycle.add(JavaConverters.asJava(scalaChangesSet));
        }

        resetMachine();

        for (Set<Change> values : valuesAtCycle) {
            System.out.println(values);
        }

        System.out.println(cyclesCount);
    }

    public void stepIn() {

    }

    public void stepOut() {

    }

    private void updateMachineState() {
        List<Integer> registerValues = new ArrayList<>();
        for (Change change : valuesAtCycle.get(cycle)) {
            if (REGISTER_MEMORY_FULLNAME.equals(change.wire().fullName())) {
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
            }
        }
        machine.getRegisterFile().setAllRegisters(registerValues);
        System.out.println(machine.getRegisterFile());
        cycle++;
    }

    private void resetMachine() {
        cycle = 0;
        updateMachineState();
    }
}
