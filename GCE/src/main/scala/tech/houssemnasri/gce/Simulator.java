import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import treadle.vcd.Change;
import treadle.vcd.VCD;

public class Simulator {
    private static final int CLOCK_CYCLE_PERIOD = 10; // ns
    private final MachineState machine;
    private Program program;
    private final List<HashSet<Change>> valuesAtCycle = new ArrayList<>();

    public Simulator(MachineState machine, Program program, GHDLInteractor ghdlInteractor) {
        this.machine = machine;
        this.program = program;

        VCD vcd = ghdlInteractor.run(program);
    }

    public void stepIn() {

    }

    public void stepOut() {

    }

    private void updateMachineState() {

    }
}
