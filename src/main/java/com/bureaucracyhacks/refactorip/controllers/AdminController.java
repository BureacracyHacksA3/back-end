package com.bureaucracyhacks.refactorip.controllers;

import com.bureaucracyhacks.refactorip.services.AdminService;
import com.bureaucracyhacks.refactorip.services.UserService;
import jakarta.annotation.security.RolesAllowed;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/admin")
@PreAuthorize("hasAuthority('ADMIN')")
public class AdminController {
    @Autowired
    private UserService userService;

    @Autowired
    private AdminService adminService;
    
    @PostMapping("/make-admin")
    public ResponseEntity<?> makeAdmin(@RequestParam String username) {
        System.out.println("User is now an admin");
        if (userService.isUsernameTaken(username)) {
            adminService.makeAdmin(username);
            return new ResponseEntity<>("User is now admin!", HttpStatus.OK);
        }
        else
        {
            return new ResponseEntity<>("User does not exist!", HttpStatus.BAD_REQUEST);
        }
    }
    @PostMapping("/remove-admin")
    public ResponseEntity<?> removeAdmin(@RequestParam String username) {
        System.out.println("User is no longer an admin");
        if (userService.isUsernameTaken(username)) {
            adminService.removeAdmin(username);
            return new ResponseEntity<>("User is no longer admin!", HttpStatus.OK);
        }
        else
        {
            return new ResponseEntity<>("User does not exist!", HttpStatus.BAD_REQUEST);
        }
    }
}
