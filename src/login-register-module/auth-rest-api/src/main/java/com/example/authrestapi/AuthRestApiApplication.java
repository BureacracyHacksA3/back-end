package com.example.authrestapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
//@EntityScan( basePackages = {"com.example.authrestapi.entity"} )
public class AuthRestApiApplication {

    public static void main(String[] args) {
        SpringApplication.run(AuthRestApiApplication.class, args);
    }

}
