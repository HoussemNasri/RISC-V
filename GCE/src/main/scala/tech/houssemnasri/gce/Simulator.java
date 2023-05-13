import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import scala.collection.JavaConverters;
import scala.math.Ordering;
import treadle.vcd.Change;
import treadle.vcd.VCD;

public class Simulator {
    private static final int CLOCK_CYCLE_PERIOD = 20_000_000; // fs or 20 ns
    private final MachineState machine;
    private Program program;
    // Element 0 refer to the initial values before any cycles
    private final List<Set<Change>> valuesAtCycle = new ArrayList<>();
    private final long cyclesCount;

    public Simulator(MachineState machine, Program program, GHDLInteractor ghdlInteractor) {
        this.machine = machine;
        this.program = program;

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

        System.out.println(cyclesCount);
    }

    public void stepIn() {

    }

    public void stepOut() {

    }

    private void updateMachineState() {

    }
}
