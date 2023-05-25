package tech.houssemnasri.gce.ui;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.*;
import javafx.scene.layout.AnchorPane;
import javafx.util.Callback;
import tech.houssemnasri.gce.Data;
import tech.houssemnasri.gce.DataMemory;

import java.util.ArrayList;
import java.util.List;

public class MemoryViewer extends AnchorPane implements Callback<ListView<MemoryViewer.MemoryItemModel>, ListCell<MemoryViewer.MemoryItemModel>> {
    private static final int ITEMS_PER_PAGE = 16;
    private final DataMemory dataMemory;

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
                    setContentDisplay(ContentDisplay.RIGHT);
                    setGraphicTextGap(36d);
                    TextField textfield = new TextField(item.value.hex());
                    textfield.setEditable(false);
                    setGraphic(textfield);
                    setText(item.address.hex());
                }
            }
        };
    }


    public static class MemoryItemModel {
        private Data address;
        private Data value;
    }
}
