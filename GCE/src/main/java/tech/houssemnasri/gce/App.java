package tech.houssemnasri.gce;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;
import tech.houssemnasri.gce.ui.MainView;

public class App extends Application {
    @Override
    public void start(Stage stage) {
        GHDLInteractor ghdlInteractor = new GHDLInteractor();
        Simulator simulator = new Simulator(ghdlInteractor);
        MainView mainView = new MainView(simulator, stage);
        Scene scene = new Scene(mainView, 1350, 700);
        scene.getStylesheets().add(getClass().getResource("App.css").toExternalForm());
        stage.setTitle("CPU Explorer");
        stage.setScene(scene);
        stage.close();
        stage.show();
    }

    public static void main(String[] args) {
        launch();
    }
}