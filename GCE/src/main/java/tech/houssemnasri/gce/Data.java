package tech.houssemnasri.gce;

public class Data {
    private final int sizeInBits = 32;
    private final long data;

    private Data(long data) {
        this.data = data;
    }

    public static Data fromInt(int data) {
        return new Data(data);
    }

    public static Data fromLong(long data) {
        return new Data(data);
    }

    public String hex() {
        return String.format("0x%08X", data);
    }

    public String decimal() {
        return "";
    }

    public String binary() {
        return "";
    }

    public long getData() {
        return data;
    }
}
