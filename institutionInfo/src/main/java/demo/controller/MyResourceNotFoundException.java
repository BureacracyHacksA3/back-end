package demo.controller;

public class MyResourceNotFoundException extends RuntimeException {
    public MyResourceNotFoundException(String message) {
        super(message);
    }
}
