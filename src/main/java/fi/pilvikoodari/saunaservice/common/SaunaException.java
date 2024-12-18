package fi.pilvikoodari.saunaservice.common;

import org.springframework.http.HttpStatus;

public class SaunaException extends RuntimeException {
    public SaunaException(String message, HttpStatus status) {
        super(message);
    }
}
