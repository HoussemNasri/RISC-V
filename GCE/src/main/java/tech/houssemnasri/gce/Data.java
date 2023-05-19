package tech.houssemnasri.gce;

public class Data {
    private final int sizeInBits = 32;
    private final int data;

    private Data(int data) {
        this.data = data;
    }

    public static Data fromInt(int data) {
        return new Data(data);
    }

    public String hex() {
        return "";
    }

    public String decimal() {
        return "";
    }

    public String binary() {
        return "";
    }

    public int getData() {
        return data;
    }
}
