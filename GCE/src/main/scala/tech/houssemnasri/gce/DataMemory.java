import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class DataMemory {
    private final ObservableList<Integer> words = FXCollections.observableArrayList(); // 256 = 2^8: memory addresses are 8 bit long

    public void setWord(int wordIndex, int value) {
        checkWordIndex(wordIndex);
        words.set(wordIndex, value);
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
}
