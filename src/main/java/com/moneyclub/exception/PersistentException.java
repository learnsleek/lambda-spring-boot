package com.moneyclub.exception;

public class PersistentException extends RuntimeException {
    public PersistentException(String message) {
        super(message);
    }

    public PersistentException(String message, Throwable cause) {
        super(message, cause);
    }
}
