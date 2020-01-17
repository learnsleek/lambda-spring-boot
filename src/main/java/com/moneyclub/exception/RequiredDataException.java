package com.moneyclub.exception;

public class RequiredDataException extends RuntimeException {
    public RequiredDataException(String message) {
        super(message);
    }

    public RequiredDataException(String message, Throwable cause) {
        super(message, cause);
    }
}
