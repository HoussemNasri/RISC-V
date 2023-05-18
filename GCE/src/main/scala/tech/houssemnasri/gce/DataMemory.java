import java.util.List;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class DataMemory {
    public static final int WORDS = 256;
    private final ObservableList<Integer> words = FXCollections.observableArrayList(); // 256 = 2^8: memory addresses are 8 bit long

    public DataMemory() {
        for (int i = 0; i < WORDS; i++) {
            words.add(0);
        }
    }

    public void setWord(int wordIndex, int value) {
        checkWordIndex(wordIndex);
        words.set(wordIndex, value);
    }

    public void update(List<Integer> updatedWords) {
        words.setAll(updatedWords);
    }

    public int readWord(int wordIndex) {
        checkWordIndex(wordIndex);
        return words.get(wordIndex);
    }

    public ObservableList<Integer> getWords() {
        return words;
    }

    private void checkWordIndex(int wordIndex) {
        if (!(wordIndex >= 0 && wordIndex <= 256)) {
            throw new IllegalArgumentException("Words are indexed from 0 to 256");
        }
    }

    private String formattedAddress(int wordIndex) {
        return String.format("0x%010X", wordIndex * 4);
    }

    @Override
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Data Memory").append("\n");
        stringBuilder.append("-----------------------").append("\n");

        for (int wordIndex = 0; wordIndex < WORDS; wordIndex++) {
            stringBuilder.append(String.format("[%s]: %d", formattedAddress(wordIndex), words.get(wordIndex))).append("\n");
        }

        return stringBuilder.toString();
    }
}
