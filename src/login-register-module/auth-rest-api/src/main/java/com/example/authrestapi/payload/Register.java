package com.example.authrestapi.payload;

import lombok.Data;

@Data
public class Register {
    private String name;
    private String surname;
    private String username;
    private String email;
    private String password;
    private String phone_number;
    private String created_at;
    private Long user_id;

}
