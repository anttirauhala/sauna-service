package fi.pilvikoodari.saunaservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SaunaServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(SaunaServiceApplication.class, args);
        System.out.println("SaunaServiceApplication started.");
    }
}
