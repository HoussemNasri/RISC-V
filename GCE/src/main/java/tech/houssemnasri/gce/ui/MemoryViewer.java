package tech.houssemnasri.gce.ui;

import javafx.beans.property.ObjectProperty;
import javafx.beans.property.SimpleObjectProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.*;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.HBox;
import javafx.util.Callback;
import tech.houssemnasri.gce.Data;
import tech.houssemnasri.gce.DataMemory;

import java.util.ArrayList;
import java.util.List;

public class MemoryViewer extends AnchorPane implements Callback<ListView<MemoryViewer.MemoryItemModel>, ListCell<MemoryViewer.MemoryItemModel>> {
    private static final int ITEMS_PER_PAGE = 16;
    private final DataMemory dataMemory;
    private final ObjectProperty<DataDisplayMode> dataDisplayMode = new SimpleObjectProperty<>(DataDisplayMode.HEX);

    public MemoryViewer(DataMemory dataMemory) {
        this.dataMemory = dataMemory;

        Pagination pagination = new Pagination(DataMemory.WORDS / ITEMS_PER_PAGE);
        pagination.setPageFactory(this::createMemoryPage);

        AnchorPane.setLeftAnchor(pagination, 0d);
        AnchorPane.setRightAnchor(pagination, 0d);
        AnchorPane.setTopAnchor(pagination, 0d);
        AnchorPane.setBottomAnchor(pagination, 0d);

        getChildren().setAll(pagination);
    }

    private ListView<MemoryItemModel> createMemoryPage(int pageIndex) {
        ObservableList<Integer> words = dataMemory.getWords();
        List<Integer> pageValues = words
                .subList(pageIndex * ITEMS_PER_PAGE, Math.min(pageIndex * ITEMS_PER_PAGE + ITEMS_PER_PAGE, words.size()));
        List<MemoryItemModel> page = new ArrayList<>();
        System.out.println(pageIndex);
        for (int i = 0; i < pageValues.size(); i++) {
            MemoryItemModel memoryItem = new MemoryItemModel();
            memoryItem.address = Data.fromInt((pageIndex * ITEMS_PER_PAGE * 4) + i * 4);
            memoryItem.value = Data.fromInt(pageValues.get(i));
            page.add(memoryItem);
        }
        ListView<MemoryItemModel> listView = new ListView<>(FXCollections.observableArrayList(page));
        listView.setCellFactory(this);

        return listView;
    }

    @Override
    public ListCell<MemoryItemModel> call(ListView param) {
        return new ListCell<MemoryItemModel>() {
            @Override
            protected void updateItem(MemoryItemModel item, boolean empty) {
                super.updateItem(item, empty);
                if (!empty && item != null) {
                    // Workaround to use a custom layout for the cell
                    setText("");
                    setGraphicTextGap(0);

                    Label label = new Label(item.address.hex());
                    label.setMinWidth(120);
                    TextField textfield = new TextField();
                    if (dataDisplayMode.get().equals(DataDisplayMode.BINARY)) {
                        textfield.setText(item.value.binary());
                    } else if (dataDisplayMode.get().equals(DataDisplayMode.DECIMAL)) {
                        textfield.setText(item.value.decimal());
                    } else {
                        textfield.setText(item.value.hex());
                    }
                    dataDisplayMode.addListener((obs, old, displayMode) -> {
                        if (displayMode.equals(DataDisplayMode.BINARY)) {
                            textfield.setText(item.value.binary());
                        } else if (displayMode.equals(DataDisplayMode.DECIMAL)) {
                            textfield.setText(item.value.decimal());
                        } else {
                            textfield.setText(item.value.hex());
                        }
                    });

                    textfield.setEditable(false);
                    HBox hbox = new HBox(12, label, textfield);
                    setGraphic(hbox);
                }
            }
        };
    }

    public ObjectProperty<DataDisplayMode> dataDisplayModeProperty() {
        return dataDisplayMode;
    }

    public static class MemoryItemModel {
        private Data address;
        private Data value;
    }
}
