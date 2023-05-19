package tech.houssemnasri.gce.ui;

public enum DataDisplayMode {
    HEX("Hex"), DECIMAL("Decimal"), BINARY("Binary");
    private final String label;

    DataDisplayMode(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
