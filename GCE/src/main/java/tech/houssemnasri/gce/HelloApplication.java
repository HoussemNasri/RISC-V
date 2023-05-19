package tech.houssemnasri.gce;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;

public class HelloApplication extends Application {
    @Override
    public void start(Stage stage) throws URISyntaxException, MalformedURLException {
        Parent root;

        try {
            root = FXMLLoader.load(getClass().getResource("ui/MainView.fxml"));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        Scene scene = new Scene(root, 1350, 700);
        scene.getStylesheets().add(getClass().getResource("App.css").toExternalForm());
        stage.setTitle("Hello!");
        stage.setScene(scene);
        stage.close();
        stage.show();
    }

    public static void main(String[] args) {
        System.out.println("Hello, World");
        try {
        /*    VCD vcd = VCD.read(HelloApplication.class.getClassLoader().getResource("tech/houssemnasri/gce/lw_wave.vcd").getPath(), "", "", "", "");
            System.out.println("Time Scale: " + vcd.timeScale());
            for (long l : vcd.events()) {
                System.out.print(l + ", ");
            }
            System.out.println();
            System.out.println(vcd.scopeRoot().wires().head().name() + " : " +
                    vcd.scopeRoot().wires().head().id() + " : " +
                    vcd.scopeRoot().wires().head().fullName());

            VCDExtensions vcdExtensions = new VCDExtensions(vcd);*/
            GHDLInteractor ghdlInteractor = new GHDLInteractor();
            Simulator simul = new Simulator(null, ghdlInteractor);

            // Map<String, BigInteger> latestWiresValues = vcdExtensions.getLatestWiresValue();

            // vcd.dumpHumanReadable();
        } catch (Exception exception) {
            exception.printStackTrace();
            System.out.println("Couldn't parse VCD file " + exception);
        }
        launch();
    }
}