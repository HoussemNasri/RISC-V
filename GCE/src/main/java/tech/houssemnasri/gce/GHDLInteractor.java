package tech.houssemnasri.gce;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Scanner;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import treadle.vcd.VCD;

public class GHDLInteractor {

    private final Path cpuVHDLFilesPath = Paths.get("C:\\Users\\Houssem\\Desktop\\GHDL-Testing\\cpu");
    private final String topEntity = "riscv_tb";
    private final String vcdWaveformFilePath = "aibcd.vcd";
    private final Long stopTimeInNanoseconds = 500L; // 2 cycles

    public VCD run(Program program) {
        List<String> vhdlFileNames = getVHDLFileNames();
        String analyzeCommand = buildAnalyzeCommand(vhdlFileNames);
        String elaborateCommand = buildElaborateCommand();
        String runCommand = buildRunCommand();

        Runtime runtime = Runtime.getRuntime();
        System.out.println(analyzeCommand);
        try {
            Process analyzeProcess = runtime.exec(analyzeCommand, null, cpuVHDLFilesPath.toFile());
            analyzeProcess.waitFor();
            printInputStream(analyzeProcess.getErrorStream());
        } catch (Exception e) {
            throw new RuntimeException("Failed to execute GHDL command: " + analyzeCommand, e);
        }

        System.out.println(elaborateCommand);
        try {
            Process elaborateProcess = runtime.exec(elaborateCommand, null, cpuVHDLFilesPath.toFile());
            elaborateProcess.waitFor();
            printInputStream(elaborateProcess.getErrorStream());
        } catch (Exception e) {
            throw new RuntimeException("Failed to execute GHDL command: " + elaborateCommand, e);
        }

        System.out.println(runCommand);
        try {
            Process runProcess = runtime.exec(runCommand, null, cpuVHDLFilesPath.toFile());
            printInputStream(runProcess.getInputStream());
            runProcess.waitFor();
            System.out.println("Finished running");
        } catch (Exception e) {
            throw new RuntimeException("Failed to execute GHDL command: " + runCommand, e);
        }

        return VCD.read(cpuVHDLFilesPath.resolve(vcdWaveformFilePath).toString(), "", "", "", "");
    }

    private void printInputStream(InputStream stream) {
        Scanner s = new Scanner(stream).useDelimiter("\\A");
        String result = "";
        if (s.hasNext()) {
            result = s.next();
        } else {
            result = "";
        }
        System.out.println(result);
    }

    public List<String> getVHDLFileNames() {
        try (Stream<Path> vhdlFiles = Files.find(cpuVHDLFilesPath, 1, (p, attrs) -> p.toString().endsWith(".vhd") || p.toString().endsWith(".vhdl"))) {
            return vhdlFiles.map(Path::getFileName)
                            .map(Path::toString)
                            .collect(Collectors.toList());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private String buildAnalyzeCommand(List<String> vhdlFileNames) {
        StringBuilder analyzeCommandBuilder = new StringBuilder("ghdl -a --ieee=synopsys");

        for (String vhdlFile : vhdlFileNames) {
            analyzeCommandBuilder.append(" ").append(vhdlFile);
        }

        return analyzeCommandBuilder.toString();
    }

    private String buildElaborateCommand() {
        return "ghdl -e -fsynopsys " + topEntity;
    }

    private String buildRunCommand() {
        return "ghdl -r -fsynopsys " + topEntity +
                " --vcd=" + vcdWaveformFilePath +
                " --stop-time=" + stopTimeInNanoseconds + "ns";
    }
}
