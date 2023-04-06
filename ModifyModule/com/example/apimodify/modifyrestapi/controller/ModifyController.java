package com.example.apimodify.modifyrestapi.controller;

import com.example.apimodify.modifyrestapi.entity.UserJPA;
import com.example.apimodify.modifyrestapi.payload.Modify;
import com.example.apimodify.modifyrestapi.repository.RoleRepository;
import com.example.apimodify.modifyrestapi.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.NoSuchElementException;

@RestController
@RequestMapping("/api/mdf")
public class ModifyController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @PostMapping("/modify")
    public ResponseEntity<?> modifyUser(@RequestBody Modify modify) {

        UserJPA user;
        try {
            user = userRepository.findByUsername(modify.getUsername()).orElseThrow();
        }
        catch(NoSuchElementException e)
        {
            return new ResponseEntity<>("User not found!", HttpStatus.BAD_REQUEST);
        }

        if(modify.getEmail() != null)
            user.setEmail(modify.getEmail());

        if(modify.getPhone_number() != null)
            user.setPhone_number(modify.getPhone_number());

        if(modify.getAddress() != null)
            user.setAddress(modify.getAddress());

        if(modify.getName() != null)
            user.setName(modify.getName());

        if(modify.getSurname() != null)
            user.setSurname(modify.getSurname());

        if(modify.getPassword() != null)
            user.setPassword(passwordEncoder.encode(modify.getPassword()));

        userRepository.save(user);

        return new ResponseEntity<>("User modified successfully!", HttpStatus.OK);
    }

    @PostMapping("/delete")
    public ResponseEntity<?> deleteUser(@RequestBody Modify modify) {

        UserJPA user;
        try {
            user = userRepository.findByUsername(modify.getUsername()).orElseThrow();
        }
        catch(NoSuchElementException e)
        {
            return new ResponseEntity<>("User not found!", HttpStatus.BAD_REQUEST);
        }

        userRepository.delete(user);

        return new ResponseEntity<>("User deleted successfully!", HttpStatus.OK);
    }

}
