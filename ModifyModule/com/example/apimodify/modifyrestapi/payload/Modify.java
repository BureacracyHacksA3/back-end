package com.example.apimodify.modifyrestapi.payload;

import lombok.Data;


@Data
public class Modify {
    private String username;
    private String email;
    private String phone_number;
    private String address;
    private String name;
    private String surname;
    private String password;
}
