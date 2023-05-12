import java.math.BigInteger;
import java.util.Map;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;

import treadle.vcd.VCD;

public class HelloApplication extends Application {
    @Override
    public void start(Stage stage) {
        AnchorPane root = new AnchorPane();

        Scene scene = new Scene(root, 320, 240);
        stage.setTitle("Hello!");
        stage.setScene(scene);
        stage.close();
        stage.show();
    }

    public static void main(String[] args) {
        System.out.println("Hello, World");
        try {
            VCD vcd = VCD.read(HelloApplication.class.getClassLoader().getResource("tech/houssemnasri/gce/lw_wave.vcd").getPath(), "", "", "", "");
            System.out.println("Time Scale: " + vcd.timeScale());
            for (long l : vcd.events()) {
                System.out.print(l + ", ");
            }
            System.out.println();
            System.out.println(vcd.scopeRoot().wires().head().name() + " : " +
                    vcd.scopeRoot().wires().head().id() + " : " +
                    vcd.scopeRoot().wires().head().fullName());

            VCDExtensions vcdExtensions = new VCDExtensions(vcd);

            Map<String, BigInteger> latestWiresValues = vcdExtensions.getLatestWiresValue();
            for (String wireId : latestWiresValues.keySet()) {
                String wireName = VCD.wireIdToWire().get(wireId).get().name();
                System.out.println(VCD.wireIdToWire().get(wireId).get().fullName() + " : " + latestWiresValues.get(wireId));
            }

            // vcd.dumpHumanReadable();
        } catch (Exception exception) {
            exception.printStackTrace();
            System.out.println("Couldn't parse VCD file " + exception);
        }
        // launch();
    }
}