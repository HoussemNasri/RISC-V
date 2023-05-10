public enum Register {

    ZERO(0),
    RA(1),
    SP(2),
    GP(3);

    private final int index;

    Register(int index) {
        this.index = index;
    }

    public int index() {
        return index;
    }
}
