package exceptions;

public class UnimplementedException extends RuntimeException {
    public UnimplementedException() {
        super("The requested method is not implemented");
    }
}
